"""Leading near-round neutral fit with a Hopf and auxiliary gauge lock (94)."""

import argparse
from math import isfinite, pi, sqrt

import numpy as np
from scipy.linalg import eigh
from scipy.optimize import brentq

from finite_flux_currents import Observations


def neutral_parameters(sine, stiffness, observations, i3, period):
    v2 = 1/(sqrt(2)*observations.fermi)
    iw = v2/(4*observations.charged**2)
    ip = 6*i3
    iy = iw*(1-sine)/sine
    ic = 4*(period**2*iy-ip)/9
    iq = iw+iy
    overlap = 3*ic/(4*period*iq)
    norm = np.array([[iw*(1-sine), iw*overlap], [iw*overlap, ic/4-iq*overlap**2]])
    pole2 = observations.neutral**2
    determinant_term = stiffness**2-pole2*norm[1, 1]
    if ic <= 0 or determinant_term <= 0:
        raise ValueError("The positive auxiliary branch requires its bare pole above the Z.")
    root_squared = 4*pole2*(norm[0, 0]+pole2*norm[0, 1]**2/determinant_term)
    rho = v2/root_squared
    exchange = v2/stiffness**2
    dv = observations.axial + rho/2 + 3*exchange/4
    vector = rho*(2*sine-.5)+3*dv+3*exchange*(4-2*overlap)/4
    return dict(vector=vector, d_v=dv, rho=rho, i_w=iw, i_c=ic, i_q=iq,
                root_squared=root_squared, v_squared=v2, norm=norm,
                hydrogen_weak_charge=-12*dv+6*exchange)


def fit(stiffness, tensor_coefficient=.49604141748, i3=.769851237589674, period=6):
    observations = Observations()
    sine = brentq(lambda value: neutral_parameters(value, stiffness, observations, i3, period)["vector"]
                  - observations.vector, .21, .26, xtol=1e-14)
    fit_data = neutral_parameters(sine, stiffness, observations, i3, period)
    v2, dv = fit_data["v_squared"], fit_data["d_v"]
    if not (0 < dv < 1 and fit_data["rho"] > 1):
        raise ValueError("These inputs require a negative vortex or root stiffness.")
    axion_squared = v2*(1/dv-1)
    dual = 1/((2*pi)**2*tensor_coefficient)
    weak_radius = sqrt((4*tensor_coefficient+196*dual)/(4*pi*axion_squared))
    fe2 = tensor_coefficient/(4*pi*weak_radius**2)
    fm2 = dual/(4*pi*weak_radius**2)
    cv = .75*(fit_data["i_w"]/weak_radius**2-(fe2+25*fm2)/6)
    colour_radius = sqrt(3*i3/cv)
    neutral_masses, eigenvectors = eigh(
        np.diag([fit_data["root_squared"]/4, stiffness**2]), fit_data["norm"]
    )
    flux_gap2 = 8/colour_radius**2
    broken_colour = eigh(np.array([[flux_gap2+stiffness**2/i3, -flux_gap2],
                                    [-flux_gap2, flux_gap2]]), eigvals_only=True)
    overlap = 3*fit_data["i_c"]/(4*period*fit_data["i_q"])
    left = np.array([sine-.5, 1.5-overlap]) @ eigenvectors[:, 0]
    right = np.array([sine, 2.5-overlap]) @ eigenvectors[:, 0]
    return dict(stiffness=stiffness, sine=sine, rho=fit_data["rho"], vortex_fraction=dv,
                e_squared=1/fit_data["i_q"], hydrogen_weak_charge=fit_data["hydrogen_weak_charge"],
                auxiliary_inverse_norm=fit_data["i_c"], weak_inverse_radius=1/weak_radius,
                hopf_inverse_radius=1/colour_radius, reduced_planck=sqrt(2*cv),
                round_colour_vector_mass=sqrt(broken_colour[0]),
                locking_mass=sqrt(neutral_masses[1]), neutral_weak_mass=sqrt(neutral_masses[0]),
                vortex_mass=sqrt((v2+axion_squared)/(8*cv*weak_radius**2)),
                z_lepton_angle=right/(2*(right-left)),
                z_lepton_width=sqrt(neutral_masses[0])*(left**2+right**2)/(24*pi),
                sterile_locking_vertex=abs(eigenvectors[1, 1]/2),
                sterile_z_vertex=abs(eigenvectors[1, 0]/2))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--locking-stiffness", type=float, default=5000.,
                        help="Higgs phase decay constant in GeV")
    parser.add_argument("--zero-weak-charge-sum", action="store_true",
                        help="choose the stiffness so the tree proton plus electron weak charge vanishes")
    args = parser.parse_args()
    stiffness = args.locking_stiffness
    if not isfinite(stiffness) or stiffness <= 0:
        parser.error("The locking stiffness must be positive and finite.")
    if args.zero_weak_charge_sum:
        stiffness = brentq(lambda value: fit(value)["hydrogen_weak_charge"], 4000., 5000.)
    for name, value in fit(stiffness).items():
        print(f"{name:28s} {value:.10g}")


if __name__ == "__main__":
    main()
