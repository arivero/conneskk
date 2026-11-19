"""Reproduce the finite neck and compensated lower endpoint of result 93."""

import argparse
from math import ceil, exp, log, pi, sqrt

import numpy as np
from scipy.linalg import eigh
from scipy.optimize import brentq

from dual_tensor_currents import WeakFit, fit_at_mass
from weak_current_spectrum import charged_pencil, spline_grid_basis


def tensors(grid, coefficient):
    p, f2, ut = grid.p, grid.f2, grid.ut
    magnetic_primitive = -7*f2 + 4*(p*(2-p)+(1-p)**2*f2/2)
    dual = 1 / ((2*pi)**2 * coefficient)
    cost = (grid.weights @ (coefficient*f2**2 + dual*magnetic_primitive**2))/(128*pi)
    return cost, dual


def matched_neck(point, grid, i_3, period):
    f2, wt = grid.f2, grid.weights
    area_factor = wt @ f2
    meridian = wt @ np.sqrt(f2)
    a = point["meridian"] / meridian
    base_area_fraction = 2*pi*a**2*area_factor / point["weak_area"]
    original_circle = 1 / point["compact_mass"]
    geometric_norm = grid.average @ (f2*(f2+grid.ut**2))
    cost, dual = tensors(grid, point["tensor_coefficient"])
    residual_norm = point["photon_norm"] - cost
    if residual_norm <= 0:
        raise ValueError("The tensor alone exhausts the specified photon norm.")

    def radius_state(log_b):
        relative_b = exp(log_b)
        return original_circle/(relative_b**6*base_area_fraction), point["cv"]/relative_b**2

    def residual(log_b):
        circle, cv = radius_state(log_b)
        return cv*(circle**2/period**2+a*a*geometric_norm) - residual_norm

    log_b = brentq(residual, -10, 10, xtol=1e-13)
    circle, cv = radius_state(log_b)
    gamma_scale = sqrt(area_factor/(128*pi*cv*a**2))
    return dict(a=a, circle=circle, cv=cv, colour_radius=sqrt(4*i_3/cv),
                stiffness=point["stiffness"]*exp(-2*log_b),
                electric_flux=gamma_scale*sqrt(point["tensor_coefficient"]),
                magnetic_flux=gamma_scale*sqrt(dual), tensor_cost=cost, meridian=meridian)


def summarize_current(mass, kinetic, currents, mass_unit, hadron, cv):
    inverse_poles, vectors = eigh(kinetic, mass)
    weights = 2*(currents[:, 0] @ vectors)**2
    strength = sum(weights)
    # Reflection makes some poles invisible to the lepton current.
    sourced = np.flatnonzero(weights > 1e-10*strength)[-1]
    dimensionless_momentum = (hadron/mass_unit)**2
    argument = dimensionless_momentum * inverse_poles
    delta = weights @ (argument/(1+argument)) / strength
    return dict(S_b=strength, weak_mass_over_hadron=mass_unit/(hadron*sqrt(inverse_poles[sourced])),
                residue=weights[sourced]/(8*inverse_poles[sourced])*(mass_unit**2/cv),
                static_share=weights[sourced]/strength, drop_at_hadron=delta,
                xi=sqrt(2)*hadron**2*strength/(8*cv))


def calculate(shape, step, branch):
    period, i_3 = 6, .769851237589674
    point = fit_at_mass(WeakFit(period=period), 500.)[branch]
    end = max(25., 10. + ceil(abs(log(shape))))
    grid, basis, scalar, scalar_t = spline_grid_basis(shape, step, end)
    neck = matched_neck(point, grid, i_3, period)
    cargs = dict(stiffness=neck["stiffness"], period=period, circle_ratio=neck["a"]/neck["circle"],
                 flux=neck["electric_flux"], magnetic_flux=neck["magnetic_flux"])
    mass, kinetic, currents, _ = charged_pencil(grid, basis, **cargs)
    hadron_times_circle = .312 / 500
    middle = summarize_current(mass, kinetic, currents, 1/neck["a"],
                               hadron_times_circle/neck["circle"], neck["cv"])
    scalar_mass = scalar_t.T @ (grid.weights[:, None] * scalar_t)
    scalar_norm = scalar.T @ ((grid.weights * grid.f2)[:, None] * scalar)
    eigenvalues = eigh(scalar_mass, scalar_norm, eigvals_only=True, subset_by_index=(1, 3))
    middle.update({f"meridian_mass_{j}": sqrt(value)/neck["a"]
                   for j, value in enumerate(eigenvalues, start=1)})
    middle.update(neck)
    mass, kinetic, currents, _ = charged_pencil(
        grid, basis, stiffness=0., circle_ratio=0., period=period,
        collapsed_tensor=point["tensor_coefficient"]
    )
    # Set CV=1 in a comoving unit. Then H_N^2/CV is fixed by H_N L and the photon norm.
    scaled_hadron = hadron_times_circle/(period*sqrt(point["photon_norm"]-neck["tensor_cost"]))
    lower = summarize_current(mass, kinetic, currents, 1., scaled_hadron, 1.)
    lower["weak_mass_squared_over_cv"] = (lower["weak_mass_over_hadron"]*scaled_hadron)**2
    return middle, lower


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--shape", type=float, default=.001)
    parser.add_argument("--step", type=float, default=.125)
    parser.add_argument("--branch", type=int, choices=(1, 2), default=1)
    args = parser.parse_args()
    if not np.isfinite([args.shape, args.step]).all() or min(args.shape, args.step) <= 0:
        parser.error("Shape and spline step must be positive and finite.")
    for label, point in zip(("Finite neck", "Fixed-shape limit"),
                            calculate(args.shape, args.step, args.branch-1)):
        print(label)
        for key, value in point.items():
            print(f"{key:28s} {value:.10g}")


if __name__ == "__main__":
    main()
