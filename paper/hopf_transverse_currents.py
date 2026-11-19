"""Finite transverse inverse and a matched meridian in the spin Hopf action."""

import argparse
from dataclasses import dataclass, replace
from math import log, pi, sqrt

import numpy as np
from scipy.linalg import eigh
from scipy.optimize import root

from dual_tensor_currents import WeakFit, converged
from finite_flux_currents import neutral_pencil, radial_basis, transverse_observables
from hopf_charge_match import fit as light_fit
from hopf_charge_match import geometry, neutral_parameters
from tensor_trajectory import summarize_current, tensors
from weak_current_spectrum import HopfProfiles, charged_pencil, spline_grid_basis


@dataclass(frozen=True)
class HopfModel:
    period: int = 6
    i3: float = .769851237589674
    tensor_coefficient: float = .49604141748
    lock_scale: float = 5000.

    def __post_init__(self):
        if self.period != 6:
            raise ValueError("The fixed Hopf charge table uses circle period six.")

    def colour_radius(self, cv):
        return sqrt(3*self.i3/cv)

    def inputs(self, grid, a, cv, auxiliary):
        ratio = a/self.colour_radius(cv)
        area_factor = grid.weights @ grid.f2
        tensor_scale = sqrt(area_factor/(128*pi*cv*a**2))
        electric = tensor_scale*sqrt(self.tensor_coefficient)
        magnetic = tensor_scale/(2*pi*sqrt(self.tensor_coefficient))
        hopf = HopfProfiles(auxiliary/(3*self.i3), self.lock_scale**2/cv)
        return ratio, electric, magnetic, hopf


def evaluate(parameters, match, model):
    epsilon, roots, a, cv, auxiliary = np.exp(parameters)
    grid, basis, scalar, scalar_t, meridian = radial_basis(-log(epsilon), match.degree)
    ratio, electric, magnetic, hopf = model.inputs(grid, a, cv, auxiliary)
    charged = charged_pencil(grid, basis, stiffness=roots, circle_ratio=ratio,
                             period=model.period, flux=electric, magnetic_flux=magnetic, hopf=hopf)
    neutral = neutral_pencil(grid, scalar, scalar_t, roots, ratio, model.period, electric,
                             magnetic_flux=magnetic, hopf=hopf)
    return dict(epsilon=epsilon, stiffness=roots, auxiliary_inverse_norm=auxiliary,
                hopf_inverse_radius=1/model.colour_radius(cv),
                weak_inverse_radius=1/(sqrt(2)*a), reduced_planck=sqrt(2*cv),
                meridian=a*meridian, locking_scale=model.lock_scale,
                weak_area=2*pi*a**2*(grid.weights @ grid.f2),
                **transverse_observables(charged, neutral, a, cv))


def fit(match, model, cancel_weak_charge=False):
    if cancel_weak_charge and match.hold_out_fermi:
        raise ValueError("The cancellation example uses the five central contact and mass inputs.")
    guess = pole_seed(match, model) if match.hold_out_fermi else light_fit(
        model.lock_scale, model.tensor_coefficient, model.i3, model.period
    )
    cv, r = guess["reduced_planck"]**2/2, 1/guess["weak_inverse_radius"]
    v2 = guess["v_squared"]
    vh2 = v2/guess["rho"]
    epsilon = 3*(v2-vh2)/(32*cv)
    seed = np.log([epsilon, vh2/(2*cv*sqrt(epsilon)), r/sqrt(2), cv,
                   guess["auxiliary_inverse_norm"]])
    if cancel_weak_charge:
        seed = np.r_[seed, log(model.lock_scale)]

        def point(x):
            return evaluate(x[:-1], match, replace(model, lock_scale=np.exp(x[-1])))

        def residual(x):
            values = point(x)
            return np.r_[match.residual(values), values["hydrogen_weak_charge"]]
    else:
        def point(x):
            return evaluate(x, match, model)

        def residual(x):
            return match.residual(point(x))

    return point(converged(residual, seed))


def pole_seed(match, model):
    obs = match.observations

    def data(x):
        sine, log_v = x
        return neutral_parameters(sine, model.lock_scale, obs, model.i3, model.period,
                                  v_squared=np.exp(log_v))

    def residual(x):
        # The pole observables do not depend on the separate vortex stiffness.
        state = data(x)
        state["d_v"] = .001
        poles = geometry(state, x[0], model.lock_scale, model.tensor_coefficient, model.i3)
        return [poles["z_lepton_angle"]-obs.pole_angle,
                np.log(poles["z_lepton_width"]/obs.pole_width)]

    solution = root(residual, [obs.pole_angle, log(61000.)])
    if not solution.success:
        raise RuntimeError("Unable to initialize the held-out pole fit.")
    sine = solution.x[0]
    state = data(solution.x)
    rho, v2, overlap = state["rho"], state["v_squared"], state["overlap"]
    factor = 3*v2/(4*model.lock_scale**2)
    gl = rho*(sine-.5)+factor*(1.5-overlap)
    gr = rho*sine+factor*(2.5-overlap)
    state["d_v"] = (2*obs.scattering_angle*(gr-gl)-gr)/(1+2*obs.scattering_angle)
    return geometry(state, sine, model.lock_scale, model.tensor_coefficient, model.i3)


def trajectory(point, model, shape, step):
    end = max(25., 10.-log(shape))
    grid, basis, scalar, scalar_t = spline_grid_basis(shape, step, end)
    meridian = grid.weights @ np.sqrt(grid.f2)
    a = point["meridian"]/meridian
    area_factor = grid.weights @ grid.f2
    area = 2*pi*a**2*area_factor
    relative_b = (point["weak_area"]/area)**(1/7)
    b = relative_b/point["hopf_inverse_radius"]
    cv = point["cv"]/relative_b**2
    roots = point["stiffness"]/relative_b**2
    cost, _ = tensors(grid, model.tensor_coefficient)
    weak_norm = cv*a**2*(grid.average @ (grid.f2*(grid.f2+grid.ut**2)))
    auxiliary = (point["photon_norm"]-cost-weak_norm-6*model.i3/model.period**2)*4*model.period**2/9
    if auxiliary <= 0:
        raise ValueError("The other photon contributions exhaust the norm at this shape.")
    ratio, electric, magnetic, hopf = model.inputs(grid, a, cv, auxiliary)
    charged = charged_pencil(grid, basis, stiffness=roots, circle_ratio=ratio,
                             period=model.period, flux=electric, magnetic_flux=magnetic, hopf=hopf)
    # Use the stipulated comoving nucleon scale for a conditional comparison only.
    h = .312/point["hopf_inverse_radius"]
    middle = summarize_current(*charged[:3], 1/a, h/b, cv)
    stiffness = scalar_t.T @ (grid.weights[:, None]*scalar_t)
    norm = scalar.T @ ((grid.weights*grid.f2)[:, None]*scalar)
    eigenvalues = eigh(stiffness, norm, subset_by_index=(1, 4), eigvals_only=True)
    middle.update(hopf_first_scalar=sqrt(5)/b, azimuthal_bound=1/(sqrt(2)*a),
                  auxiliary_inverse_norm=auxiliary, weak_area=area,
                  **{f"meridian_mass_{i}": sqrt(value)/a for i, value in enumerate(eigenvalues, 1)})

    collapsed = charged_pencil(grid, basis, stiffness=0., circle_ratio=0., period=model.period,
                               collapsed_tensor=model.tensor_coefficient)
    lower = summarize_current(*collapsed[:3], 1., h/sqrt(3*model.i3), 1.)
    return middle, lower


def show(title, values):
    print(title)
    for name, value in values.items():
        print(f"  {name:29s} {value:.10g}")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--degree", type=int, default=8)
    parser.add_argument("--lock-scale", type=float, default=5000.)
    parser.add_argument("--hold-out-fermi", action="store_true")
    parser.add_argument("--cancel-weak-charge", action="store_true")
    parser.add_argument("--trajectory", action="store_true")
    args = parser.parse_args()
    if args.degree < 3 or not np.isfinite(args.lock_scale) or args.lock_scale <= 0:
        parser.error("Use degree at least three and a positive finite locking scale.")
    if args.hold_out_fermi and args.cancel_weak_charge:
        parser.error("Select either the held-out lifetime test or the central weak-charge cancellation.")
    model = HopfModel(lock_scale=args.lock_scale)
    point = fit(WeakFit(degree=args.degree, hold_out_fermi=args.hold_out_fermi), model,
                args.cancel_weak_charge)
    show("Compact point", point)
    if args.trajectory:
        model = replace(model, lock_scale=point["locking_scale"])
        middle, lower = trajectory(point, model, .001, .125)
        show("Finite neck", middle)
        show("Uniform shrink", lower)


if __name__ == "__main__":
    main()
