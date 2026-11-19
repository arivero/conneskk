"""Finite pole and contact fits for the electric and magnetic tensor modes.

Examples:
  OPENBLAS_NUM_THREADS=1 python3 paper/dual_tensor_currents.py
  OPENBLAS_NUM_THREADS=1 python3 paper/dual_tensor_currents.py --hold-out-fermi --compact-mass 800
  OPENBLAS_NUM_THREADS=1 python3 paper/dual_tensor_currents.py --maximize-compact
"""

import argparse
from dataclasses import dataclass, replace
from math import hypot, pi, sqrt

import numpy as np
from scipy.optimize import least_squares, minimize_scalar

from finite_flux_currents import Observations, evaluate, light_parameters


ELECTRIC_WEIGHT = 7 / (48*pi**2)
MAGNETIC_WEIGHT = 25 / (336*pi**2)


@dataclass(frozen=True)
class WeakFit:
    degree: int = 8
    period: int = 6
    hold_out_fermi: bool = False
    observations: Observations = Observations()

    def targets(self):
        obs = self.observations
        if not self.hold_out_fermi:
            return obs
        s = obs.pole_angle
        gz2 = 24*pi*obs.pole_width / (obs.neutral*((s-.5)**2 + s**2))
        gf0 = (1-s)*gz2 / (4*sqrt(2)*obs.charged**2)
        rho = (obs.charged/obs.neutral)**2 / (1-s)
        dv = rho*(obs.scattering_angle-s) / (1+2*obs.scattering_angle)
        return replace(obs, fermi=gf0, vector=rho*(2*s-.5)+3*dv, axial=-rho/2+dv)

    def point(self, parameters, compact_mass):
        return evaluate(parameters, self.degree, compact_mass, self.period, dual_tensor=True)

    def residual(self, point):
        obs = self.observations
        masses = [np.log(point["charged"]/obs.charged), np.log(point["neutral"]/obs.neutral)]
        if self.hold_out_fermi:
            scattering = (point["vector"]-point["axial"]) / (-4*point["axial"])
            return np.array([*masses, np.log(point["z_lepton_width"]/obs.pole_width),
                             point["sin2_z"]-obs.pole_angle, scattering-obs.scattering_angle])
        return np.array([*masses, np.log(point["fermi"]/obs.fermi),
                         point["vector"]-obs.vector, point["axial"]-obs.axial])


@dataclass(frozen=True)
class RoundInverse:
    i_weak: float
    i_y: float
    v_squared: float
    rho: float
    axion_squared: float
    period: int

    @classmethod
    def from_fit(cls, fit):
        obs = fit.targets()
        s, rho, dv, v2, e2 = light_parameters(obs)
        return cls(s/e2, (1-s)/e2, v2, rho, v2*(1/dv-1), fit.period)

    @property
    def compact_factor(self):
        return 3*pi**2*self.axion_squared/(14*self.i_y*self.period**2)

    @property
    def max_compact_mass(self):
        p = (hypot(self.i_weak, ELECTRIC_WEIGHT-MAGNETIC_WEIGHT)
             - ELECTRIC_WEIGHT - MAGNETIC_WEIGHT)/2
        return sqrt(p*self.compact_factor)

    @property
    def max_ratio(self):
        p = self.max_compact_mass**2/self.compact_factor
        return sqrt((p+MAGNETIC_WEIGHT)/(p+ELECTRIC_WEIGHT))

    def compact_at_ratio(self, ratio):
        p = (self.i_weak-ELECTRIC_WEIGHT*ratio-MAGNETIC_WEIGHT/ratio)/(ratio+1/ratio)
        return sqrt(p*self.compact_factor)

    def ratios(self, compact_mass):
        p = compact_mass**2/self.compact_factor
        if compact_mass > self.max_compact_mass:
            raise ValueError(f"The leading positive branches end at {self.max_compact_mass:.4f} GeV.")
        discriminant = max(0., self.i_weak**2-4*(p+ELECTRIC_WEIGHT)*(p+MAGNETIC_WEIGHT))
        large = (self.i_weak+sqrt(discriminant))/(2*(p+ELECTRIC_WEIGHT))
        small = (p+MAGNETIC_WEIGHT)/((p+ELECTRIC_WEIGHT)*large)
        return small, large

    def seed(self, compact_mass, ratio):
        cv = self.i_y*(self.period*compact_mass)**2
        epsilon = 3*self.v_squared*(1-1/self.rho)/(32*cv)
        stiffness = self.v_squared/(2*cv*sqrt(epsilon)*self.rho)
        r = sqrt(7*(ratio+1/ratio)/(2*pi**2*self.axion_squared))
        magnetic = sqrt(self.axion_squared/(784*cv*(1+ratio**2)))
        return np.log([epsilon, stiffness, compact_mass*r/sqrt(2), 7*ratio*magnetic, magnetic])


def converged(residual, seed):
    solution = least_squares(residual, seed, diff_step=2e-4,
                             bounds=(-np.inf, [0]+[np.inf]*(len(seed)-1)),
                             ftol=2e-12, xtol=2e-12, gtol=2e-11)
    if not solution.success or np.max(abs(residual(solution.x))) > 1e-7:
        raise RuntimeError("The finite tensor fit did not converge: " + solution.message)
    return solution.x


def fit_at_mass(fit, compact_mass):
    inverse = RoundInverse.from_fit(fit)
    fits = []
    for ratio in inverse.ratios(compact_mass):
        def residual(x):
            return fit.residual(fit.point(x, compact_mass))

        solution = converged(residual, inverse.seed(compact_mass, ratio))
        fits.append(fit.point(solution, compact_mass))
    return fits


def fit_at_ratio(fit, ratio):
    inverse = RoundInverse.from_fit(fit)
    log_mass = np.log(inverse.compact_at_ratio(ratio))
    epsilon, stiffness, a_over_l, _, magnetic = inverse.seed(np.exp(log_mass), ratio)
    seed = [epsilon, stiffness, a_over_l, magnetic, log_mass]

    def point(x):
        epsilon, stiffness, a_over_l, magnetic, log_mass = x
        parameters = [epsilon, stiffness, a_over_l, magnetic+np.log(7*ratio), magnetic]
        return fit.point(parameters, np.exp(log_mass))

    return point(converged(lambda x: fit.residual(point(x)), seed))


def maximize_compact(fit):
    seed = RoundInverse.from_fit(fit).max_ratio
    fit_mass = lambda ratio: -fit_at_ratio(fit, ratio)["compact_mass"]
    optimum = minimize_scalar(fit_mass, bounds=(.7*seed, 1.4*seed),
                              method="bounded", options={"xatol": .0002})
    if not optimum.success:
        raise RuntimeError(optimum.message)
    return fit_at_ratio(fit, optimum.x)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--degree", type=int, default=8)
    parser.add_argument("--period", type=int, default=6)
    parser.add_argument("--compact-mass", type=float, default=500.)
    parser.add_argument("--hold-out-fermi", action="store_true")
    parser.add_argument("--maximize-compact", action="store_true",
                        help="find the nearby finite fold along the two branches")
    args = parser.parse_args()
    if args.degree < 3 or args.period <= 0 or args.period % 6:
        parser.error("Use degree at least three and a positive period divisible by six.")
    if not np.isfinite(args.compact_mass) or args.compact_mass <= 0:
        parser.error("Use a positive finite compact mass.")
    fit = WeakFit(args.degree, args.period, args.hold_out_fermi)
    if args.maximize_compact:
        points = [maximize_compact(fit)]
    else:
        points = fit_at_mass(fit, args.compact_mass)
    for i, point in enumerate(points, start=1):
        print(f"Branch {i}, f_e/(7 f_m) = {point['f_e']/(7*point['f_m']):.9f}")
        for key, value in point.items():
            print(f"{key:30s} {value:.11g}")


if __name__ == "__main__":
    main()
