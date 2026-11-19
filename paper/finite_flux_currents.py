"""Finite charged and neutral current match for the flux-lifted compact member.

Use OPENBLAS_NUM_THREADS=1 python3 paper/finite_flux_currents.py --degree 10.
Use --hold-out-fermi for the pole-input test and add --flux-coupling 1 for
the saturated single-class example, which also predicts both neutrino contacts.
Use --root-phase to calculate the fixed-period phase norm and its fermion vertices.
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
    pole_angle: float = 0.23148
    pole_width: float = 0.083984 / np.hypot(1, 2.4955 / 91.1879) / (1 + 3 / (4*pi*128))

    @property
    def scattering_angle(self):
        return (self.vector - self.axial) / (-4 * self.axial)


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


def neutral_pencil(grid, g, gt, stiffness, circle_ratio, period, flux, root_bias=0.0,
                   *, magnetic_flux=0.0, hopf=None):
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
    fields = ["rotation", "vortex", "circle", "electric"]
    if magnetic_flux:
        fields.append("magnetic")
    if hopf is not None:
        fields.extend(("auxiliary", "five_form"))
    size = len(fields) * g.shape[1]
    kinetic = np.zeros((size, size))
    mass = np.zeros_like(kinetic)

    def row(**blocks):
        return np.hstack([blocks.get(field, zero) for field in fields])

    def square(matrix, weight, **blocks):
        rows = np.sqrt(weight)[:, None] * row(**blocks)
        matrix += rows.T @ rows

    # Coordinates U, Z, W, P with physical z=mu U+Z, v=U/k+(a/L)W.
    inv_ratio = 1 / (period * circle_ratio)
    square(kinetic, measure * f2, rotation=g)
    square(kinetic, 16 * measure, rotation=mu[:, None] * g, vortex=g)
    square(kinetic, measure, rotation=inv_ratio * g, circle=g)
    square(kinetic, avg, rotation=-flux * pform, electric=pform)
    square(mass, measure, rotation=gt)
    square(mass, 16 * avg, rotation=mu[:, None] * gt, vortex=gt)
    square(mass, avg, rotation=inv_ratio * gt, circle=gt)
    square(mass, 16 * measure * p, vortex=g)
    square(mass, avg / f2, rotation=-flux * f2[:, None] * gt,
           vortex=-16 * flux * azimuth_flux[:, None] * g, electric=pform_t)
    if hopf is not None:
        square(kinetic, hopf.auxiliary_norm * measure, rotation=1.5*inv_ratio*g, auxiliary=g)
        square(kinetic, measure, rotation=inv_ratio*g, five_form=g)
        square(mass, hopf.auxiliary_norm * avg, rotation=1.5*inv_ratio*gt, auxiliary=gt)
        square(mass, avg, rotation=inv_ratio*gt, five_form=gt)
        square(mass, 8*circle_ratio**2 * measure, circle=g, five_form=-g)
        square(mass, hopf.locking*circle_ratio**2 * measure, circle=3*g, auxiliary=-2*g)
    if magnetic_flux:
        vertical_curvature = (p * ut**2 + (1 - p)**2 * f2) / 2
        primitive = -7 * f2 + 4 * (p * (2 - p) + (1 - p)**2 * f2 / 2)
        square(kinetic, avg, rotation=magnetic_flux * primitive[:, None] * g, magnetic=pform)
        square(mass, avg / f2, rotation=magnetic_flux * (primitive - 4 * vertical_curvature)[:, None] * gt,
               vortex=-112 * magnetic_flux * azimuth_flux[:, None] * g, magnetic=pform_t)
    for sign in (1, -1):
        weight = stiffness * measure * np.sqrt(p) * np.exp(sign * (2 * root_bias - t))
        square(mass, weight, vortex=g, circle=sign*g/(2*inv_ratio))

    def source(n, spin_label, hypercharge, momentum, auxiliary):
        charge = spin_label - n / 2 + hypercharge
        density = grid.weights * np.sqrt(f2) * np.exp((2 * spin_label - n) * t) * p**(n / 2)
        if hopf is None:
            momentum, auxiliary = period * hypercharge, 0.
        rows = row(rotation=charge * g + gt / 4, vortex=n*g,
                   circle=momentum*circle_ratio*g, auxiliary=auxiliary*circle_ratio*g)
        return (density / np.sum(density)) @ rows

    # nuL, eL, eR, nuR, uL, dL, uR, dR. Colour multiplicity is external to the vertex.
    currents = [source(2, 1.5, -.5, 1.5, -3.), source(2, .5, -.5, 1.5, -3.),
                source(1, .5, -1., 1.5, -5.), source(1, .5, 0., 1.5, -1.),
                source(2, 1.5, 1/6, 2.5, -1.), source(2, .5, 1/6, 2.5, -1.),
                source(1, .5, 2/3, 2.5, 1.), source(1, .5, -1/3, 2.5, -3.)]
    photon = kinetic[0, 0]
    charges = [0, -1, -1, 0, 2/3, -1/3, 2/3, -1/3]
    if hopf is not None:
        currents.extend([measure @ row(vortex=g),
                         measure @ row(circle=3*circle_ratio*g, auxiliary=-2*circle_ratio*g),
                         measure @ row(circle=circle_ratio*g, five_form=-circle_ratio*g)])
        charges.extend([0, 0, 0])
    currents = np.asarray(currents).T
    if np.linalg.norm(mass[0]) != 0 or not np.allclose(currents[0], charges, atol=1e-12):
        raise ArithmeticError("The exact electric generator was lost.")
    overlap = kinetic[0, 1:] / photon
    return (mass[1:, 1:], kinetic[1:, 1:] - photon * np.outer(overlap, overlap),
            currents[1:] - np.outer(overlap, currents[0]), photon)


def phase_response(grid, g, gt, stiffness, ratio, period, root_bias, mass, currents, cv):
    """Metric and fermion vertices of the root-product phase at fixed axion period."""
    unlifted_mass, _, _, _ = neutral_pencil(grid, g, gt, stiffness, ratio, period, 0., root_bias)
    # A constant Z has only matter mass terms in the unlifted form. Removing U=1
    # put this basis vector at degree-1. Each root rotates through half the phase.
    z_constant = g.shape[1] - 1
    source = unlifted_mass[z_constant] / 2
    compensator = solve(mass, source, assume_a="pos")
    phase_norm = cv * (unlifted_mass[z_constant, z_constant] / 4 - source @ compensator)
    if phase_norm <= 0:
        raise ValueError("The broken phase requires a positive physical root-phase norm.")
    radius = sqrt(phase_norm)
    induced_vertex = currents.T @ compensator
    # Making the mass real adds one half to the right-minus-left derivative vertex.
    result = {"root_phase_radius": radius, "qcd_axion_decay_constant": radius / 3}
    for label, left, right in (("electron", 1, 2), ("up", 4, 6), ("down", 5, 7)):
        result[f"phase_{label}_yukawa_per_mass"] = (.5 + induced_vertex[right] - induced_vertex[left]) / radius
    return result


def transverse_observables(charged_pencils, neutral_pencils, a, cv):
    ch, ck, jc, _ = charged_pencils
    nh, nk, jn, photon = neutral_pencils
    cvals, cvecs = eigh(ch, ck)
    nvals, nvecs = eigh(nh, nk)
    cstatic = 2 * jc[:, 0] @ solve(ch, jc[:, 0], assume_a="pos")
    nc = 2 * jn.T @ solve(nh, jn, assume_a="pos") / cstatic
    cvertex = sqrt(2 / (cv * a**2)) * jc.T @ cvecs
    nvertex = jn.T @ nvecs / sqrt(cv * a**2)
    weak_mass = sqrt(cvals[0]) / a
    zmass = sqrt(nvals[0]) / a
    light_nc = nvertex[:, 0]
    if abs(light_nc[3]) > 0.1 * abs(light_nc[0]):
        raise ValueError("The lowest sourced neutral mode is outside the weak-pole branch of this fit.")
    # A mass degeneracy can distribute the singlet residue over more than one pole.
    sterile_order = np.argsort(nvertex[3, 1:]**2)[::-1] + 1
    if jn.shape[1] == 8:
        vortex, companion = sterile_order[:2]
        diagnostic = {}
    else:
        vortex = np.argmax(abs(nvertex[8]))
        probes = nvertex[9:11]
        participation = np.sum((probes/np.linalg.norm(probes, axis=1)[:, None])**2, axis=0)
        companion, five_form = sorted(np.argsort(participation)[-2:])
        diagnostic = dict(locking_mass=sqrt(nvals[companion])/a,
                          locking_right_neutrino_vertex=abs(nvertex[3, companion]),
                          five_form_mass=sqrt(nvals[five_form])/a,
                          five_form_right_neutrino_vertex=abs(nvertex[3, five_form]),
                          neutral_heavy_probe_fraction=(participation[companion]
                                                       + participation[five_form])/2)
    total_sterile = nvertex[3] @ nvertex[3]
    axial_electron = nc[1] - nc[2]
    c1u = axial_electron[4] + axial_electron[6]
    c1d = axial_electron[5] + axial_electron[7]
    c1e = axial_electron[1] + axial_electron[2]
    electric = 1/(cv*a**2*photon)
    return dict(fermi=sqrt(2) * cstatic / (8 * cv), charged=weak_mass, neutral=zmass,
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
               cv=cv, a=a, photon_norm=1/electric, e_star_squared=electric, **diagnostic)


def evaluate(log_inputs, degree, compact_mass, period, root_bias=0.0, *,
             include_phase=False, dual_tensor=False):
    epsilon, stiffness, ratio, flux, last = np.exp(log_inputs)
    magnetic_flux = last if dual_tensor else 0.0
    grid, basis, g, gt, meridian = radial_basis(-np.log(epsilon), degree)
    charged = charged_pencil(grid, basis, stiffness=stiffness, circle_ratio=ratio,
                             period=period, flux=flux, root_bias=root_bias,
                             magnetic_flux=magnetic_flux)
    neutral = neutral_pencil(grid, g, gt, stiffness, ratio, period, flux, root_bias,
                             magnetic_flux=magnetic_flux)
    nh, _, jn, photon = neutral
    a = ratio / compact_mass
    area_factor = grid.weights @ grid.f2
    electric = 256 * pi**2 * flux * magnetic_flux / (area_factor * photon) if dual_tensor else last
    cv = 1 / (electric * a**2 * photon)
    out = dict(epsilon=epsilon, stiffness=stiffness, gamma=flux, meridian=a*meridian,
               **{"a/L": ratio}, **transverse_observables(charged, neutral, a, cv))
    if dual_tensor:
        area = 2*pi*a**2*area_factor
        area_normalization = 8*sqrt(cv)/area_factor
        out.update(magnetic_gamma=magnetic_flux, f_e=area_normalization*flux,
                   f_m=area_normalization*magnetic_flux, weak_area=area, planck_mass=sqrt(2*cv),
                   compact_mass=compact_mass, tensor_coefficient=flux/(2*pi*magnetic_flux))
    if include_phase and dual_tensor:
        raise ValueError("The fixed-period phase diagnostic is defined only for the electric model.")
    if include_phase:
        out.update(phase_response(grid, g, gt, stiffness, ratio, period, root_bias, nh, jn, cv))
    return out


def light_parameters(obs):
    ratio_pole = (obs.charged / obs.neutral)**2
    neutral_combination = obs.vector - 3 * obs.axial
    sine = (neutral_combination - ratio_pole) / (neutral_combination + 2 * ratio_pole)
    rho = ratio_pole / (1 - sine)
    dv = obs.axial + rho / 2
    if not (0 < sine < 1 and rho > 1 and 0 < dv < 1):
        raise ValueError("Central targets lie outside the positive small-breaking branch.")
    v2 = 1 / (sqrt(2) * obs.fermi)
    electric = sine * 4 * obs.charged**2 / v2
    return sine, rho, dv, v2, electric


def light_inverse(obs, compact_mass, period):
    sine, rho, dv, v2, electric = light_parameters(obs)
    cv = (1 - sine) / electric * period**2 * compact_mass**2
    flux = sqrt(v2 * (1/dv - 1) / (16 * cv))
    ratio = sqrt(3 * sine / (4 * (2 + flux**2) * (1-sine))) / period
    epsilon = 3 * v2 * (1 - 1/rho) / (32 * cv)
    stiffness = v2 / (2 * cv * sqrt(epsilon) * rho)
    return np.log([epsilon, stiffness, ratio, flux, electric])


def fit(degree, compact_mass, period, hold_out_fermi=False, fixed_flux=None, *, include_phase=False):
    if fixed_flux is not None and (not hold_out_fermi or not np.isfinite(fixed_flux) or fixed_flux <= 0):
        raise ValueError("A fixed positive flux uses the independent pole-input fit.")
    obs = Observations()
    pole_angle, pole_width = obs.pole_angle, obs.pole_width
    initial_obs = obs
    if hold_out_fermi:
        gz2 = pole_width * 24*pi / (obs.neutral * ((pole_angle-.5)**2 + pole_angle**2))
        gf0 = (1-pole_angle) * gz2 / (4*sqrt(2) * obs.charged**2)
        rho = (obs.charged / obs.neutral)**2 / (1-pole_angle)
        if fixed_flux is None:
            scattering_angle = obs.scattering_angle
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
    return evaluate(parameters(solution.x), degree, compact_mass, period, include_phase=include_phase)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--degree", type=int, default=8, help="radial functions per component")
    parser.add_argument("--compact-mass", type=float, default=2000., help="1/L in GeV")
    parser.add_argument("--period", type=int, default=6)
    parser.add_argument("--hold-out-fermi", action="store_true",
                        help="use the leptonic pole width and angle to predict the Fermi contact")
    parser.add_argument("--flux-coupling", type=float,
                        help="hold gamma fixed and predict both neutrino contacts in the pole-input fit")
    parser.add_argument("--root-phase", action="store_true",
                        help="compute the root-product phase norm and its minimal fermion vertices")
    args = parser.parse_args()
    if args.degree < 3 or not np.isfinite(args.compact_mass) or args.compact_mass <= 0:
        parser.error("Use at least three basis functions and a positive finite compact mass.")
    if args.period <= 0 or args.period % 6:
        parser.error("k must be a positive multiple of six.")
    point = fit(args.degree, args.compact_mass, args.period, args.hold_out_fermi, args.flux_coupling,
                include_phase=args.root_phase)
    for key, value in point.items():
        print(f"{key:30s} {value:.11g}")


if __name__ == "__main__":
    main()
