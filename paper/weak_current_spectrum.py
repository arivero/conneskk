"""Galerkin approximation to the fixed-shape charged current (results 63, 73, 74).

Example: OPENBLAS_NUM_THREADS=1 python3 paper/weak_current_spectrum.py 0.2 0.001
The meridian variable is conformal distance. The output is in unscaled vortex units.
"""
import argparse

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


def spectrum(b, step, end, *, stiffness=0.0, circle_ratio=0.0, period=6):
    nodes, gauss = roots_legendre(12)
    panels = int(np.ceil(2 * end / step))
    width = 2 * end / panels
    t = ((np.arange(panels)[:, None] + (nodes + 1) / 2) * width - end).ravel()
    weights = np.tile(gauss * width / 2, panels)
    p, ut, f2, cap = vortex(t, b, end)
    f = np.sqrt(f2)
    average = weights / (weights @ f2)
    fs = (1 - p) * ut / 2
    magnetic = (1 - p) / 4
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
    zeros = np.zeros_like(F)
    size = 2 * g.shape[1]
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
    circle_mass = Fp.T @ (column(average) * Fp) + F.T @ (column(average) * F)
    circle_kinetic = F.T @ (column(average * f2) * F)
    circle = eigh(circle_mass, circle_kinetic, eigvals_only=True, subset_by_index=(0, 0))[0]

    if circle_ratio > 0:
        # The auxiliary external coordinate gradient uses a common scalar on both roots.
        # Its Schur complement implements the projection P of Proposition 73.1.
        count = F.shape[1]
        source = np.r_[source, -(period / 2) * circle_ratio
                       * ((weights * f * p) @ F) / (weights @ (f * p * np.exp(-t)))]
        mass = block_diag(mass, circle_mass)
        kinetic = block_diag(kinetic, circle_kinetic)
        if stiffness > 0:
            root_mass = np.zeros((4 * count, 4 * count))
            root_scale = np.r_[scale, np.ones(2 * count)]
            for sign in (1, -1):
                slope = column((ut / 4 - sign / 2) / f2)
                measure = column(np.sqrt(stiffness * average * f2 * np.sqrt(p) * np.exp(-sign * t)))
                radial = np.hstack((slope * F, zeros, zeros, slope * Fp)) * root_scale * measure
                angular = np.hstack((-slope * Fp, F, sign * period * circle_ratio * F / 2,
                                     -slope * F)) * root_scale * measure
                root_mass += radial.T @ radial + angular.T @ angular
            split = 3 * count
            aux = root_mass[split:, split:]
            coupling = root_mass[:split, split:]
            mass += root_mass[:split, :split] - coupling @ solve(aux, coupling.T, assume_a="pos")
        # Equilibrate the full three-field pencil at finite circle-radius ratio.
        full_scale = 1 / np.sqrt(np.diag(mass))
        mass *= full_scale[:, None] * full_scale
        kinetic *= full_scale[:, None] * full_scale
        source *= full_scale
    total = 2 * source @ solve(mass, source, assume_a="pos")
    pole, vectors = eigh(mass, kinetic, subset_by_index=(0, 0))
    residue = 2 * (source @ vectors[:, 0]) ** 2
    return weights @ f, total, pole[0], residue, total - residue / pole[0], circle


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
