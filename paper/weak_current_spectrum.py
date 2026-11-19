"""Galerkin approximation to the fixed-shape charged current (results 63, 73, 74).

Example: OPENBLAS_NUM_THREADS=1 python3 paper/weak_current_spectrum.py 0.2 0.001
The meridian variable is conformal distance. The output is in unscaled vortex units.
"""
import argparse
from dataclasses import dataclass

import numpy as np
from scipy.integrate import solve_ivp
from scipy.linalg import block_diag, eigh, solve
from scipy.special import roots_legendre


def vortex(t, b, end):
    epsilon = np.exp(-b)

    def equation(_, state):
        v, derivative = state
        factor = np.exp(-v - epsilon * np.expm1(-v))
        return derivative, -2 * factor * np.expm1(-b - v)

    solution = solve_ivp(
        equation, (0, end), (0.0, 0.0), dense_output=True, rtol=8e-13,
        atol=min(2e-14, b * 1e-6), max_step=0.1,
    )
    if not solution.success:
        raise RuntimeError(solution.message)
    v, derivative = solution.sol(abs(t))
    p = epsilon * np.exp(-v)
    metric = 2 * np.exp(-v - epsilon * np.expm1(-v))
    cap = solution.t[np.argmin(abs(solution.y[0] + b - 1))] if b < 1 else 1.0
    if b + solution.y[0, -1] < 18:
        raise ValueError("Increase --end to include both pole tails at this shape.")
    return p, -derivative * np.sign(t), metric, cap


def spline_values(t, step, cap):
    """Uniform cubic B-splines, with the two outer coefficient tails held constant."""
    cut = max(5, int(np.ceil((cap + 7) / step)))
    count = 2 * cut + 1
    value = np.zeros((t.size, count))
    first = np.zeros_like(value)
    second = np.zeros_like(value)
    for centre in range(int(np.floor(t.min() / step)) - 2, int(np.ceil(t.max() / step)) + 3):
        index = min(cut, max(-cut, centre)) + cut
        u = t / step - centre
        w = abs(u)
        inner = w <= 1
        outer = (w > 1) & (w < 2)
        value[inner, index] += 2 / 3 - w[inner] ** 2 + w[inner] ** 3 / 2
        first[inner, index] += (-2 * u[inner] + 1.5 * w[inner] * u[inner]) / step
        second[inner, index] += (-2 + 3 * w[inner]) / step**2
        value[outer, index] += (2 - w[outer]) ** 3 / 6
        first[outer, index] -= np.sign(u[outer]) * (2 - w[outer]) ** 2 / (2 * step)
        second[outer, index] += (2 - w[outer]) / step**2
    return value, first, second


@dataclass
class WeakGrid:
    weights: np.ndarray
    p: np.ndarray
    ut: np.ndarray
    f2: np.ndarray
    t: np.ndarray

    @property
    def average(self):
        return self.weights / (self.weights @ self.f2)


@dataclass
class StreamBasis:
    value: np.ndarray
    derivative: np.ndarray
    curl: np.ndarray
    strain1: np.ndarray
    strain2: np.ndarray


def primitive_norm(grid, two_form):
    """Matrix of norms of charged coexact primitives in the sphere average."""
    weighted = grid.weights[:, None] * two_form
    forward = np.exp(grid.t)[:, None]
    backward = np.exp(-grid.t)[:, None]
    # Green kernel of -d_t^2+1 on the conformal line, the charge-one sector.
    left = np.cumsum(forward * weighted, axis=0) * backward
    right = np.cumsum((backward * weighted)[::-1], axis=0)[::-1] * forward
    norm = weighted.T @ (left + right - weighted)
    return (norm + norm.T) / (4 * (grid.weights @ grid.f2))


def charged_pencil(grid, basis, *, stiffness, circle_ratio, period, flux=0.0,
                   magnetic_flux=0.0, root_bias=0.0, collapsed_tensor=None):
    """Mass and kinetic forms, unit lepton/quark raising sources, and circle control."""
    if collapsed_tensor is not None and (
        collapsed_tensor <= 0 or not np.isfinite(collapsed_tensor)
        or stiffness or circle_ratio or flux or magnetic_flux
    ):
        raise ValueError("The collapsed pencil uses a positive tensor coefficient and no finite-radius terms.")
    weights, p, ut, f2, t = grid.weights, grid.p, grid.ut, grid.f2, grid.t
    f, fs = np.sqrt(f2), (1 - p) * ut / 2
    magnetic, average = (1 - p) / 4, grid.average
    F, Fp, curl = basis.value, basis.derivative, basis.curl
    strain1, strain2 = basis.strain1, basis.strain2

    def column(values):
        return values[:, None]

    zeros = np.zeros_like(F)
    size = 2 * F.shape[1]
    mass = np.zeros((size, size))
    kinetic = np.zeros_like(mass)

    def add_square(matrix, stream, gauge, measure):
        design = np.hstack((stream, gauge)) * np.sqrt(column(measure))
        matrix += design.T @ design

    add_square(mass, strain1, zeros, 4 * average / f2)
    add_square(mass, strain2, zeros, average / f2)
    add_square(mass, column(magnetic) * Fp, Fp, 16 * average)
    add_square(mass, column(magnetic) * F, F, 16 * average)
    orbit = column(ut / (2 * f2))
    add_square(mass, orbit * F, zeros, 4 * average * p * f2)
    add_square(mass, -orbit * Fp, 2 * F, 4 * average * p * f2)
    add_square(kinetic, Fp, zeros, average)
    add_square(kinetic, F, zeros, average)
    add_square(kinetic, zeros, F, 16 * average * f2)

    spin = column((ut - 1 - fs) / (2 * f2)) * (F - Fp) + curl / column(4 * f2)
    source = (weights * f * p) @ np.hstack((spin, 2 * F)) / (weights @ (f * p * np.exp(-t)))
    scale = 1 / np.sqrt(np.diag(mass))
    mass *= scale[:, None] * scale
    kinetic *= scale[:, None] * scale
    source *= scale
    count = F.shape[1]
    circle_mass = Fp.T @ (column(average) * Fp) + F.T @ (column(average) * F)
    circle_kinetic = F.T @ (column(average * f2) * F)
    circle = eigh(circle_mass, circle_kinetic, eigvals_only=True, subset_by_index=(0, 0))[0]

    if circle_ratio > 0:
        # The auxiliary external coordinate gradient uses a common scalar on both roots.
        # Its Schur complement implements the projection P of Proposition 73.1.
        circle_vertex = circle_ratio * ((weights * f * p) @ F) / (weights @ (f * p * np.exp(-t)))
        source = np.column_stack((np.r_[source, -(period / 2) * circle_vertex],
                                  np.r_[source, (period / 6) * circle_vertex]))
        mass = block_diag(mass, circle_mass)
        kinetic = block_diag(kinetic, circle_kinetic)
        if stiffness > 0:
            root_mass = np.zeros((4 * count, 4 * count))
            root_scale = np.r_[scale, np.ones(2 * count)]
            for sign in (1, -1):
                slope = column((ut / 4 - sign / 2) / f2)
                root_profile = np.sqrt(p) * np.exp(sign * (2 * root_bias - t))
                measure = column(np.sqrt(stiffness * average * f2 * root_profile))
                radial = np.hstack((slope * F, zeros, zeros, slope * Fp)) * root_scale * measure
                angular = np.hstack((-slope * Fp, F, sign * period * circle_ratio * F / 2,
                                     -slope * F)) * root_scale * measure
                root_mass += radial.T @ radial + angular.T @ angular
            split = 3 * count
            aux = root_mass[split:, split:]
            coupling = root_mass[:split, split:]
            mass += root_mass[:split, :split] - coupling @ solve(aux, coupling.T, assume_a="pos")
    else:
        source = np.column_stack((source, source))

    def add_tensor(mass, kinetic, source, vortex_row, rotation_row):
        # Each coexact tensor polarization is *dh. Its field-strength row
        # is (h'' - h) minus the normalized internal transgression source.
        old_size = mass.shape[0]
        mass = block_diag(mass, np.zeros((count, count)))
        kinetic = block_diag(kinetic, Fp.T @ (column(average) * Fp) + F.T @ (column(average) * F))
        source = np.vstack((source, np.zeros((count, 2))))
        residual = np.zeros((len(t), old_size + count))
        residual[:, :count] = rotation_row * scale[:count]
        residual[:, count:2 * count] = vortex_row * scale[count:]
        residual[:, old_size:] = -curl
        weighted = residual * np.sqrt(column(average / f2))
        mass += weighted.T @ weighted
        return mass, kinetic, source

    if flux or magnetic_flux or collapsed_tensor is not None:
        vortex_row = -column(16 * magnetic * f2) * F
        # R is the curvature in dt ∧ dφ. The rotation moment is -curl/(2 f²).
        curvature = (p * ut**2 + (1 - p)**2 * f2) / 2
        rotation_row = -column(4 * curvature / f2) * curl
        if collapsed_tensor is not None:
            electric_z6 = collapsed_tensor
            magnetic_z6 = 1 / ((2*np.pi)**2 * electric_z6)
            electric_source = np.hstack((zeros, vortex_row)) * scale
            magnetic_source = np.hstack((rotation_row, 7 * vortex_row)) * scale
            area_factor = grid.weights @ f2
            kinetic = area_factor/(128*np.pi) * (
                electric_z6 * primitive_norm(grid, electric_source) +
                magnetic_z6 * primitive_norm(grid, magnetic_source)
            )
            return mass, kinetic, source, circle
        if flux:
            mass, kinetic, source = add_tensor(mass, kinetic, source, flux * vortex_row, zeros)
        if magnetic_flux:
            mass, kinetic, source = add_tensor(
                mass, kinetic, source, 7 * magnetic_flux * vortex_row, magnetic_flux * rotation_row
            )

    if circle_ratio > 0 or flux or magnetic_flux:
        full_scale = 1 / np.sqrt(np.diag(mass))
        mass *= full_scale[:, None] * full_scale
        kinetic *= full_scale[:, None] * full_scale
        source *= full_scale[:, None]
    return mass, kinetic, source, circle


def spline_grid_basis(b, step, end):
    nodes, gauss = roots_legendre(12)
    panels = int(np.ceil(2 * end / step))
    width = 2 * end / panels
    t = ((np.arange(panels)[:, None] + (nodes + 1) / 2) * width - end).ravel()
    weights = np.tile(gauss * width / 2, panels)
    p, ut, f2, cap = vortex(t, b, end)
    f = np.sqrt(f2)
    fs = (1 - p) * ut / 2
    y, sech = -np.tanh(t), 1 / np.cosh(t)
    g, gp, gpp = spline_values(t, step, cap)

    def column(values):
        return values[:, None]

    # F and Z both use sech(t) times the spline. This imposes polar regularity.
    F = column(sech) * g
    Fp = column(sech) * (column(y) * g + gp)
    curl = column(sech) * (column(2 * sech**2) * g - column(2 * y) * gp - gpp)
    strain1 = column(sech) * (column(y - fs) * g + gp)
    strain2 = column(sech) * (column(2 * y * (y - fs)) * g + column(2 * (y - fs)) * gp + gpp)
    grid = WeakGrid(weights, p, ut, f2, t)
    basis = StreamBasis(F, Fp, curl, strain1, strain2)
    return grid, basis, g, gp


def spectrum(b, step, end, *, stiffness=0.0, circle_ratio=0.0, period=6):
    grid, basis, _, _ = spline_grid_basis(b, step, end)
    mass, kinetic, sources, circle = charged_pencil(
        grid, basis, stiffness=stiffness, circle_ratio=circle_ratio, period=period
    )
    source = sources[:, 0]
    total = 2 * source @ solve(mass, source, assume_a="pos")
    pole, vectors = eigh(mass, kinetic, subset_by_index=(0, 0))
    residue = 2 * (source @ vectors[:, 0]) ** 2
    return grid.weights @ np.sqrt(grid.f2), total, pole[0], residue, total - residue / pole[0], circle


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("shape", type=float, nargs="+")
    parser.add_argument("--step", type=float, default=0.25)
    parser.add_argument("--end", type=float, default=25)
    parser.add_argument("--stiffness", type=float, default=0.0,
                        help="2 Z_H zeta_0 B_0^2/B^2 for the complete finite-member root form")
    parser.add_argument("--circle-ratio", type=float, default=0.0, help="physical a/L")
    parser.add_argument("--period", type=int, default=6, help="charge period k, a multiple of six")
    args = parser.parse_args()
    if not np.isfinite([*args.shape, args.step, args.end]).all() or min(*args.shape, args.step, args.end) <= 0:
        parser.error("Shapes, step and integration endpoint must be finite and positive.")
    if not np.isfinite([args.stiffness, args.circle_ratio]).all() or min(args.stiffness, args.circle_ratio) < 0:
        parser.error("Stiffness and circle ratio must be finite and nonnegative.")
    if args.period <= 0 or args.period % 6 or (args.stiffness > 0 and args.circle_ratio == 0):
        parser.error("Use a positive multiple of six and supply a/L for a finite root stiffness.")
    print("b  P  S_b  first_lambda  residue  rest  circle_lambda")
    for b in args.shape:
        print(f"{b:g}", *(f"{item:.9g}" for item in spectrum(b, args.step, args.end, stiffness=args.stiffness,
                                                       circle_ratio=args.circle_ratio, period=args.period)))


if __name__ == "__main__":
    main()
