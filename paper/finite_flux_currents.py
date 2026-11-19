"""Finite charged and neutral current match for the flux-lifted compact member.

Use OPENBLAS_NUM_THREADS=1 python3 paper/finite_flux_currents.py --degree 10.
Use --hold-out-fermi for the pole-input test and add --flux-coupling 1 for
the saturated single-class example, which also predicts both neutrino contacts.
Pole masses are in GeV. The quadrature uses Jacobi polynomials near roundness.
"""
import argparse
from dataclasses import dataclass
from math import pi, sqrt

import numpy as np
from scipy.linalg import eigh, solve
from scipy.optimize import least_squares
from scipy.special import eval_jacobi, roots_chebyt, roots_legendre

from weak_current_spectrum import StreamBasis, WeakGrid, charged_pencil, vortex


@dataclass(frozen=True)
class Observations:
    fermi: float = 1.1663785e-5
    charged: float = 80.3625 / np.hypot(1, 2.14 / 80.3625)
    neutral: float = 91.1879 / np.hypot(1, 2.4955 / 91.1879)
    vector: float = -0.035
    axial: float = -0.503


def jacobi_family(y, count, alpha, order):
    columns = []
    for n in range(count):
        factor = 1.0
        for k in range(order):
            factor *= (n + 2 * alpha + k + 1) / 2
        columns.append(np.zeros_like(y) if n < order else
                       factor * eval_jacobi(n - order, alpha + order, alpha + order, y))
    return np.column_stack(columns)


def radial_basis(shape, degree):
    y, weights = roots_legendre(max(48, 3 * degree + 6))
    # Reverse order is immaterial to these Gauss sums; t increases north to south.
    t = -np.arctanh(y)
    sech2 = 1 - y**2
    # The meridian integral has the Chebyshev endpoint weight in this coordinate.
    cap_y, cap_weights = roots_chebyt(y.size)
    all_t = np.r_[t, -np.arctanh(cap_y)]
    p_all, ut_all, f2_all, _ = vortex(all_t, shape, max(22.0, float(np.max(abs(all_t))) + 1))
    meridian = cap_weights @ np.sqrt(f2_all[y.size:] / (1 - cap_y**2))
    p, ut, f2 = p_all[:y.size], ut_all[:y.size], f2_all[:y.size]
    grid = WeakGrid(weights / sech2, p, ut, f2, t)
    fs = (1 - p) * ut / 2
    g, gy, gyy = (jacobi_family(y, degree, 1, j) for j in range(3))
    y, sech2, fs = (v[:, None] for v in (y, sech2, fs))
    sech = np.sqrt(sech2)
    stream = StreamBasis(
        sech * g,
        sech * (y * g - sech2 * gy),
        sech * (2 * sech2 * g + 4 * y * sech2 * gy - sech2**2 * gyy),
        sech * ((y - fs) * g - sech2 * gy),
        sech * (2 * y * (y - fs) * g + 2 * (fs - 2 * y) * sech2 * gy + sech2**2 * gyy),
    )
    scalar = jacobi_family(y[:, 0], degree, 0, 0)
    derivative = -sech2 * jacobi_family(y[:, 0], degree, 0, 1)
    return grid, stream, scalar, derivative, meridian


def neutral_pencil(grid, g, gt, stiffness, circle_ratio, period, flux, root_bias=0.0):
    """Project out the exact unit photon before taking the static inverse."""
    p, ut, f2, t = grid.p, grid.ut, grid.f2, grid.t
    avg = grid.average
    measure = avg * f2
    mu = -ut / 4
    azimuth_flux = (1 - p) * f2 / 4
    fs = (1 - p) * ut / 2
    zero = np.zeros_like(g)
    pform = f2[:, None] * g
    pform_t = f2[:, None] * (gt + 2 * fs[:, None] * g)
    size = 4 * g.shape[1]
    kinetic = np.zeros((size, size))
    mass = np.zeros_like(kinetic)

    def square(matrix, weight, *blocks):
        rows = np.sqrt(weight)[:, None] * np.hstack(blocks)
        matrix += rows.T @ rows

    # Coordinates U, Z, W, P with physical z=mu U+Z, v=U/k+(a/L)W.
    inv_ratio = 1 / (period * circle_ratio)
    square(kinetic, measure * f2, g, zero, zero, zero)
    square(kinetic, 16 * measure, mu[:, None] * g, g, zero, zero)
    square(kinetic, measure, inv_ratio * g, zero, g, zero)
    square(kinetic, avg, -flux * pform, zero, zero, pform)
    square(mass, measure, gt, zero, zero, zero)
    square(mass, 16 * avg, mu[:, None] * gt, gt, zero, zero)
    square(mass, avg, inv_ratio * gt, zero, gt, zero)
    square(mass, 16 * measure * p, zero, g, zero, zero)
    square(mass, avg / f2, -flux * f2[:, None] * gt,
           -16 * flux * azimuth_flux[:, None] * g, zero, pform_t)
    for sign in (1, -1):
        weight = stiffness * measure * np.sqrt(p) * np.exp(sign * (2 * root_bias - t))
        square(mass, weight, zero, g, sign * g / (2 * inv_ratio), zero)

    def source(n, spin_label, hypercharge):
        charge = spin_label - n / 2 + hypercharge
        density = grid.weights * np.sqrt(f2) * np.exp((2 * spin_label - n) * t) * p**(n / 2)
        rows = np.hstack((charge * g + gt / 4, n * g,
                          period * circle_ratio * hypercharge * g, zero))
        return (density / np.sum(density)) @ rows

    # nuL, eL, eR, nuR, uL, dL, uR, dR. Colour multiplicity is external to the vertex.
    currents = np.array([source(2, 1.5, -.5), source(2, .5, -.5),
                         source(1, .5, -1.), source(1, .5, 0.),
                         source(2, 1.5, 1/6), source(2, .5, 1/6),
                         source(1, .5, 2/3), source(1, .5, -1/3)]).T
    photon = kinetic[0, 0]
    charges = [0, -1, -1, 0, 2/3, -1/3, 2/3, -1/3]
    if np.linalg.norm(mass[0]) != 0 or not np.allclose(currents[0], charges, atol=1e-12):
        raise ArithmeticError("The exact electric generator was lost.")
    overlap = kinetic[0, 1:] / photon
    return (mass[1:, 1:], kinetic[1:, 1:] - photon * np.outer(overlap, overlap),
            currents[1:] - np.outer(overlap, currents[0]), photon)


def evaluate(log_inputs, degree, compact_mass, period, root_bias=0.0):
    epsilon, stiffness, ratio, flux, electric = np.exp(log_inputs)
    grid, basis, g, gt, meridian = radial_basis(-np.log(epsilon), degree)
    ch, ck, jc, _ = charged_pencil(grid, basis, stiffness=stiffness, circle_ratio=ratio,
                                   period=period, flux=flux, root_bias=root_bias)
    nh, nk, jn, photon = neutral_pencil(grid, g, gt, stiffness, ratio, period, flux, root_bias)
    cvals, cvecs = eigh(ch, ck)
    nvals, nvecs = eigh(nh, nk)
    cstatic = 2 * jc[:, 0] @ solve(ch, jc[:, 0], assume_a="pos")
    nc = 2 * jn.T @ solve(nh, jn, assume_a="pos") / cstatic
    a = ratio / compact_mass
    cv = 1 / (electric * a**2 * photon)
    cvertex = sqrt(2 / (cv * a**2)) * jc.T @ cvecs
    nvertex = jn.T @ nvecs / sqrt(cv * a**2)
    weak_mass = sqrt(cvals[0]) / a
    zmass = sqrt(nvals[0]) / a
    light_nc = nvertex[:, 0]
    if abs(light_nc[3]) > 0.1 * abs(light_nc[0]):
        raise ValueError("The lowest sourced neutral mode is outside the weak-pole branch of this fit.")
    # A mass degeneracy can distribute the singlet residue over more than one pole.
    sterile_order = np.argsort(nvertex[3, 1:]**2)[::-1] + 1
    vortex, companion = sterile_order[:2]
    total_sterile = nvertex[3] @ nvertex[3]
    axial_electron = nc[1] - nc[2]
    c1u = axial_electron[4] + axial_electron[6]
    c1d = axial_electron[5] + axial_electron[7]
    c1e = axial_electron[1] + axial_electron[2]
    labels = ("epsilon", "stiffness", "a/L", "gamma", "e_star_squared")
    out = dict(zip(labels, np.exp(log_inputs)))
    out.update(fermi=sqrt(2) * cstatic / (8 * cv), charged=weak_mass, neutral=zmass,
               vector=nc[0, 1] + nc[0, 2], axial=nc[0, 1] - nc[0, 2],
               charged_residue=cvertex[0, 0]**2 / 8,
               charged_contact_fraction=cvertex[0, 0]**2 / (8 * weak_mass**2) / (cstatic / (8 * cv)),
               quark_lepton_charged_vertex=cvertex[1, 0] / cvertex[0, 0],
               vortex_mass=sqrt(nvals[vortex]) / a, vortex_right_neutrino_vertex=abs(nvertex[3, vortex]),
               vortex_sterile_fraction=nvertex[3, vortex]**2 / total_sterile,
               companion_mass=sqrt(nvals[companion]) / a,
               companion_sterile_fraction=nvertex[3, companion]**2 / total_sterile,
               z_right_neutrino_vertex=abs(light_nc[3]), sin2_z=light_nc[2] / (2*(light_nc[2]-light_nc[1])),
               z_lepton_width=zmass * np.sum(light_nc[1:3]**2) / (24*pi),
               w_lepton_width=weak_mass * cvertex[0, 0]**2 / (48*pi),
               proton_weak_charge=-2 * (2*c1u + c1d), neutron_weak_charge=-2 * (c1u + 2*c1d),
               electron_weak_charge=-2 * c1e, hydrogen_weak_charge=-2 * (2*c1u + c1d + c1e),
               dis_left_squared=sum(nc[0, 4:6]**2), dis_right_squared=sum(nc[0, 6:8]**2),
               cv=cv, a=a, photon_norm=1/electric,
               meridian=a * meridian)
    return out


def light_inverse(obs, compact_mass, period):
    ratio_pole = (obs.charged / obs.neutral)**2
    neutral_combination = obs.vector - 3 * obs.axial
    sine = (neutral_combination - ratio_pole) / (neutral_combination + 2 * ratio_pole)
    rho = ratio_pole / (1 - sine)
    dv = obs.axial + rho / 2
    if not (0 < sine < 1 and rho > 1 and 0 < dv < 1):
        raise ValueError("Central targets lie outside the positive small-breaking branch.")
    v2 = 1 / (sqrt(2) * obs.fermi)
    electric = sine * 4 * obs.charged**2 / v2
    cv = (1 - sine) / electric * period**2 * compact_mass**2
    flux = sqrt(v2 * (1/dv - 1) / (16 * cv))
    ratio = sqrt(3 * sine / (4 * (2 + flux**2) * (1-sine))) / period
    epsilon = 3 * v2 * (1 - 1/rho) / (32 * cv)
    stiffness = v2 / (2 * cv * sqrt(epsilon) * rho)
    return np.log([epsilon, stiffness, ratio, flux, electric])


def fit(degree, compact_mass, period, hold_out_fermi=False, fixed_flux=None):
    if fixed_flux is not None and (not hold_out_fermi or not np.isfinite(fixed_flux) or fixed_flux <= 0):
        raise ValueError("A fixed positive flux uses the independent pole-input fit.")
    obs = Observations()
    pole_angle = 0.23148
    pole_width = 0.083984 / np.hypot(1, 2.4955 / 91.1879) / (1 + 3 / (4*pi*128))
    initial_obs = obs
    if hold_out_fermi:
        gz2 = pole_width * 24*pi / (obs.neutral * ((pole_angle-.5)**2 + pole_angle**2))
        gf0 = (1-pole_angle) * gz2 / (4*sqrt(2) * obs.charged**2)
        rho = (obs.charged / obs.neutral)**2 / (1-pole_angle)
        if fixed_flux is None:
            scattering_angle = (obs.vector - obs.axial) / (-4 * obs.axial)
            dv = rho * (scattering_angle-pole_angle) / (1+2*scattering_angle)
        else:
            electric = (1-pole_angle)*gz2*pole_angle
            cv = (1-pole_angle)/electric * period**2 * compact_mass**2
            dv = 1 / (1 + sqrt(2)*gf0*16*cv*fixed_flux**2)
        initial_obs = Observations(fermi=gf0, vector=rho*(2*pole_angle-.5)+3*dv, axial=-rho/2+dv)
    initial = light_inverse(initial_obs, compact_mass, period)
    if initial[0] >= 0:
        raise ValueError("The supplied compact scale does not admit the near-round initialization.")

    if fixed_flux is not None:
        initial = np.delete(initial, 3)

    def parameters(x):
        return x if fixed_flux is None else np.insert(x, 3, np.log(fixed_flux))

    def residual(x):
        point = evaluate(parameters(x), degree, compact_mass, period)
        mass_residuals = [np.log(point["charged"] / obs.charged), np.log(point["neutral"] / obs.neutral)]
        if hold_out_fermi:
            values = [*mass_residuals, np.log(point["z_lepton_width"] / pole_width),
                      point["sin2_z"] - pole_angle]
            if fixed_flux is None:
                angle = (point["vector"] - point["axial"]) / (-4 * point["axial"])
                values.append(angle - scattering_angle)
            return np.array(values)
        return np.array([*mass_residuals, np.log(point["fermi"] / obs.fermi),
                         point["vector"] - obs.vector, point["axial"] - obs.axial])

    solution = least_squares(residual, initial, diff_step=2e-4,
                             bounds=(-np.inf, [0] + [np.inf] * (len(initial)-1)),
                             ftol=2e-12, xtol=2e-12, gtol=2e-11)
    if not solution.success or np.max(abs(residual(solution.x))) > 1e-6:
        raise RuntimeError(f"Finite-member fit did not converge: {solution.message}")
    return evaluate(parameters(solution.x), degree, compact_mass, period)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--degree", type=int, default=8, help="radial functions per component")
    parser.add_argument("--compact-mass", type=float, default=2000., help="1/L in GeV")
    parser.add_argument("--period", type=int, default=6)
    parser.add_argument("--hold-out-fermi", action="store_true",
                        help="use the leptonic pole width and angle to predict the Fermi contact")
    parser.add_argument("--flux-coupling", type=float,
                        help="hold gamma fixed and predict both neutrino contacts in the pole-input fit")
    args = parser.parse_args()
    if args.degree < 3 or not np.isfinite(args.compact_mass) or args.compact_mass <= 0:
        parser.error("Use at least three basis functions and a positive finite compact mass.")
    if args.period <= 0 or args.period % 6:
        parser.error("k must be a positive multiple of six.")
    for key, value in fit(args.degree, args.compact_mass, args.period, args.hold_out_fermi, args.flux_coupling).items():
        print(f"{key:30s} {value:.11g}")


if __name__ == "__main__":
    main()
