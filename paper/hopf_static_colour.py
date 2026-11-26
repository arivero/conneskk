"""Static down-quark pair on the calibrated broken Hopf trajectory of issue 29.

Run with OPENBLAS_NUM_THREADS=1 python3 paper/hopf_static_colour.py
Add --plot docs/plots/issue29-static-colour.svg to reproduce the figure.
"""

import argparse
from dataclasses import dataclass, fields, replace
from math import sqrt

import numpy as np
from scipy.optimize import brentq

from dual_tensor_currents import WeakFit
from hopf_transverse_currents import HopfModel, fit, trajectory


HBARC = 0.1973269804  # GeV fm
FLOW_LENGTH_FM = 0.1443  # sqrt(t0), Bulava et al. (2024)
HADRON_GEV = 0.312  # H_N at the compact fit of issue 29


@dataclass(frozen=True)
class StaticFit:
    """Table 4 of arXiv:2403.00754v2, with lengths in units of sqrt(t0)."""

    light: float = 0.0034
    strange: float = 0.1005
    light_mixing: float = 0.0256
    strange_mixing: float = 0.0134
    tension: float = 0.1061
    offset: float = -0.835
    coulomb: float = -0.434

    def level_and_force(self, u):
        """Ground energy relative to its limiting value and force dE/du."""
        string = self.offset + self.tension * u + self.coulomb / u
        coupling = sqrt(2) * self.light_mixing
        matrix = [[string, coupling, self.strange_mixing],
                  [coupling, self.light, 0.0],
                  [self.strange_mixing, 0.0, self.strange]]
        levels, vectors = np.linalg.eigh(matrix)
        slope = self.tension - self.coulomb / u**2
        string_weight = vectors[0, 0]**2
        return levels[0] - self.light, string_weight * slope, string_weight

    def crossing(self, threshold):
        """Positive root at which the unmixed string meets a meson threshold."""
        difference = threshold - self.offset
        return (difference + sqrt(difference**2 - 4*self.tension*self.coulomb)) / (2*self.tension)

    def force_scale_ratio(self):
        """Inner Sommer radii, on the rising branch of u squared times force."""
        def radius(value):
            return brentq(lambda u: u**2 * self.level_and_force(u)[1] - value, 2, 5)

        return radius(1.65) / radius(1.0)


def ratio_error(model):
    """Linear statistical propagation with the published Table 4 correlations."""
    errors = [0.0003, 0.0007, 0.0003, 0.0004, 0.0007, 0.007, 0.011]
    correlation = np.array([
        [1, .12, .23, -.02, -.01, -.01, .10],
        [.12, 1, .05, -.11, .09, .07, -.07],
        [.23, .05, 1, .29, .04, -.07, .04],
        [-.02, -.11, .29, 1, .06, -.13, .13],
        [-.01, .09, .04, .06, 1, -.92, .70],
        [-.01, .07, -.07, -.13, -.92, 1, -.85],
        [.10, -.07, .04, .13, .70, -.85, 1],
    ])
    changes = []
    for parameter, error in zip(fields(model), errors, strict=True):
        value = getattr(model, parameter.name)
        step = error / 100
        above = replace(model, **{parameter.name: value + step}).force_scale_ratio()
        below = replace(model, **{parameter.name: value - step}).force_scale_ratio()
        changes.append(error * (above - below) / (2*step))
    return sqrt(np.array(changes) @ correlation @ changes)


def plot(model, radius_ratio, path):
    import matplotlib.pyplot as plt

    with plt.rc_context({"svg.fonttype": "none", "svg.hashsalt": "hopf-static-colour",
                         "font.size": 10, "axes.spines.top": False, "axes.spines.right": False}):
        fig, (energy, force) = plt.subplots(1, 2, figsize=(9.0, 3.6), layout="constrained")
        lengths = np.linspace(0.28, 1.52, 250)  # compact fm, within the ground-level fit range
        levels, _, weights = np.array([model.level_and_force(r/FLOW_LENGTH_FM) for r in lengths]).T
        for scale, label, colour in [(1., "Compact", "#096b68"), (radius_ratio, "Finite neck", "#9a4a27")]:
            energy.plot(lengths*scale, levels*HBARC/(FLOW_LENGTH_FM*scale), color=colour, label=label)
            crossing_fm = model.crossing(model.light)*FLOW_LENGTH_FM*scale
            energy.axvline(crossing_fm, lw=1, ls=":", color=colour)
        energy.axhline(0, lw=.7, color=".5")
        energy.set(xlabel="Source separation  L  (fm)", ylabel="Energy below threshold  (GeV)")
        energy.legend(frameon=False)
        x = lengths * HADRON_GEV / HBARC
        force.plot(x, weights, color="#304f78")
        force.axvline(model.crossing(model.light)*FLOW_LENGTH_FM*HADRON_GEV/HBARC,
                      lw=1, ls=":", color=".4")
        force.set(xlabel="Separation in hadronic units  L H_N",
                  ylabel="Ground-state force / unmixed string force", ylim=(-.02, 1.04))
        force.text(.03, .08, "All three geometries", transform=force.transAxes, color="#304f78")
        fig.savefig(path, metadata={"Date": None})
        plt.close(fig)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--plot", metavar="FILE.svg")
    args = parser.parse_args()
    model = StaticFit()
    hopf = HopfModel()
    point = fit(WeakFit(degree=8), hopf)
    neck, _ = trajectory(point, hopf, shape=.001, step=.125)
    ratio = (point["weak_area"] / neck["weak_area"])**(1/7)
    energy_unit = HBARC / FLOW_LENGTH_FM
    sqrt_sigma = sqrt(model.tension) * energy_unit
    r_light = model.crossing(model.light) * FLOW_LENGTH_FM
    r_strange = model.crossing(model.strange) * FLOW_LENGTH_FM
    print("member       B/B*      H_N[GeV]   sqrt(sigma)[GeV]    light[fm]   strange[fm]")
    for name, scale in [("compact", 1), ("neck", ratio)]:
        print(f"{name:8s} {scale:10.6f} {HADRON_GEV/scale:12.6f} {sqrt_sigma/scale:16.6f}"
              f" {r_light*scale:12.6f} {r_strange*scale:12.6f}")
    print("shrink: B/B* = (B_neck/B*) (a/a_neck)^(-2/7)")
    print(f"sqrt(sigma)/H_N = {sqrt_sigma/HADRON_GEV:.6f},"
          f" L_light H_N = {r_light*HADRON_GEV/HBARC:.6f}, L_strange H_N = {r_strange*HADRON_GEV/HBARC:.6f}")
    print("L (compact fm)     x       V_sub/H_N    F/H_N^2    F/F_string")
    for length in [.50, .80, 1.00, 1.20, 1.30, 1.50]:
        u = length / FLOW_LENGTH_FM
        level, force, fraction = model.level_and_force(u)
        print(f"{length:9.2f} {length*HADRON_GEV/HBARC:10.5f} {level*energy_unit/HADRON_GEV:12.5f}"
              f" {force*(energy_unit/HADRON_GEV)**2:11.5f} {fraction:12.5f}")
    print(f"r0/r1 = {model.force_scale_ratio():.6f}, fit statistical uncertainty = {ratio_error(model):.6f}")
    if args.plot:
        plot(model, ratio, args.plot)


if __name__ == "__main__":
    main()
