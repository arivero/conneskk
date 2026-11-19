"""Draw the trajectory, compactification spectra and circle bundles in the lecture."""

import argparse
import math
from pathlib import Path

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.ticker import NullLocator


BLUE = "#155e80"
ORANGE = "#ae4f20"
GREEN = "#247157"
INK = "#243639"
GREY = "#53686b"
GRID = "#dfe7e6"
plt.rcParams.update({
    "font.size": 10, "axes.titlesize": 11, "axes.labelsize": 10,
    "axes.edgecolor": GREY, "axes.labelcolor": INK, "text.color": INK,
    "xtick.color": GREY, "ytick.color": GREY, "legend.fontsize": 9,
    "axes.spines.top": False, "axes.spines.right": False,
    "svg.fonttype": "none", "svg.hashsalt": "conneskk-lecture", "pdf.fonttype": 42,
})


def graph(ax):
    ax.set_axisbelow(True)
    ax.grid(axis="y", color=GRID, linewidth=0.7)


def ring(ax, radius, height, colour, depth=0.16):
    # A horizontal ring in perspective. The dashed arc is its far side.
    for start, stop, style in [(0, math.pi, "--"), (math.pi, 2 * math.pi, "-")]:
        angle = np.linspace(start, stop, 100)
        ax.plot(radius * np.cos(angle), height + depth * radius * np.sin(angle),
                style, color=colour, linewidth=1.25)


def worldsheet():
    fig, (surface, probe) = plt.subplots(1, 2, figsize=(5.3, 2.65),
                                          layout="constrained", width_ratios=[0.85, 1.4])
    times = np.linspace(0, math.pi / 2, 180)
    for side in (-1, 1):
        surface.plot(side * np.cos(times), times, color=BLUE, linewidth=1.6)
    for t in (0, 0.38, 0.76, 1.10, 1.37):
        ring(surface, math.cos(t), t, BLUE)
    surface.plot([0, 0], [0, math.pi / 2], ":", color=ORANGE, linewidth=2.4)
    surface.plot(0, math.pi / 2, "o", color=ORANGE, markersize=4)
    surface.text(0.16, 1.48, r"$f(t)$", color=ORANGE)
    surface.text(-1.01, -0.35, r"$t=0$", color=GREY)
    surface.set(xlim=(-1.16, 1.18), ylim=(-0.46, 1.77), aspect="equal")
    surface.set_axis_off()
    surface.set_title("Collapsing ring")
    q = np.linspace(0, 2.5, 250)
    angles = np.arange(256) * (2 * np.pi / 256)
    form = np.cos(np.outer(q, np.cos(angles))).mean(axis=1)
    probe.axhline(1, color=GREY, linestyle=":", label="point")
    probe.plot(q, form, color=BLUE, linewidth=2, label="ring")
    probe.plot(0.2, np.cos(0.2 * np.cos(angles)).mean(), "o", color=ORANGE, markersize=5)
    probe.set(xlim=(0, 2.5), ylim=(-0.12, 1.12), xlabel=r"momentum transfer $q\rho$",
              ylabel="normalized response", title="A probe of radius " + r"$\rho$")
    graph(probe)
    probe.legend(loc="lower left", frameon=False)
    return fig


def circle_spectrum():
    fig, ax = plt.subplots(figsize=(4.8, 2.65), layout="constrained")
    r = 2.0 ** np.linspace(-2, 2, 401)
    ax.plot(r, 1 / r, color=BLUE, label=r"momentum $1/r$", linewidth=2)
    ax.plot(r, r, "--", color=ORANGE, label=r"winding $r$", linewidth=2)
    ax.plot(r, np.abs(r - 1/r), "-.", color=GREEN, label=r"root $|r-1/r|$", linewidth=2.2)
    ax.plot(1, 0, "o", color=GREEN, markersize=5, clip_on=False)
    ax.set_xscale("log", base=2)
    ax.set_xticks([0.25, 0.5, 1, 2, 4], ["1/4", "1/2", "1", "2", "4"])
    ax.xaxis.set_minor_locator(NullLocator())
    ax.set(xlim=(0.25, 4), ylim=(0, 4.2), xlabel=r"physical radius $r=R/\ell_s$",
           ylabel=r"mass $M\ell_s$")
    ax.legend(loc="lower center", bbox_to_anchor=(0.5, 1.0), ncol=3,
              handlelength=1.6, columnspacing=0.8, frameon=False)
    graph(ax)
    return fig


def interval_window():
    fig, (ax, bands) = plt.subplots(2, 1, figsize=(4.85, 3.9), layout="constrained",
                                     height_ratios=[2.1, 1])
    u = np.linspace(0, 1, 251)
    ax.plot(u, 2*np.cos(np.pi*u/2)**2, color=BLUE, label=r"left grade", linewidth=2)
    ax.plot(u, 2*np.sin(np.pi*u/2)**2, "--", color=ORANGE, label=r"right grade", linewidth=2)
    for x, c in [(0.5-2/np.pi**2, BLUE), (0.5+2/np.pi**2, ORANGE)]:
        ax.plot(x, 0.04, "^", color=c, markersize=6)
    ax.set(xlim=(0, 1), ylim=(0, 2.15), ylabel=r"density $\ell |u|^2$",
           xlabel=r"interval position $x/\ell$")
    ax.legend(frameon=False, loc="upper center", ncol=2)
    graph(ax)
    bands.set(xlim=(-0.18, 7.55), ylim=(-0.42, 0.77), xlabel=r"probe scale $\log_{10}(ER)$")
    bands.set_yticks([])
    bands.spines["left"].set_visible(False)
    bands.axhline(0, color=GREY, linewidth=1)
    marks = [(np.log10(np.sqrt(5)), "sphere"), (2, r"$I_\ell$"), (4, r"$I_d$"), (7, "string")]
    for pos, name in marks:
        bands.vlines(pos, -0.15, 0.25, color=GREY)
        bands.text(pos, 0.36, name, ha="center", color=GREY, size=9)
    for pos, dim in [(1, 5), (3, 6), (5, 7)]:
        bands.plot(pos, 0, "o", color=GREEN, markersize=5)
        bands.text(pos, -0.18, f"{dim}D", ha="center", va="top", size=9, color=GREEN)
    return fig


def m_circle():
    fig, (ax, curved) = plt.subplots(1, 2, figsize=(5.5, 2.85), layout="constrained")
    g = np.logspace(0, 6, 241)
    ax.fill_between(g, g**(-2/3), 1, color="#e3f1ed")
    ax.loglog(g, g**(-2/3), color=BLUE, linewidth=2, label=r"$1/R_{11}$")
    ax.loglog(g, np.ones_like(g), "--", color=GREY, label=r"$1/\ell_p$")
    ax.loglog(g, g**(1/3), color=ORANGE, linewidth=2, label=r"$1/\ell_s$")
    ax.plot(1000, 1/12, "o", color=GREEN, markersize=5)
    ax.set(xticks=[1, 1e3, 1e6], xlim=(1, 1e6), ylim=(7e-5, 180),
           xlabel=r"type-IIA coupling $g_s$", ylabel=r"energy in units of $1/\ell_p$",
           title="Flat M circle")
    ax.legend(loc="lower left", frameon=False, handlelength=1.2, labelspacing=0.28)
    graph(ax)
    x = np.geomspace(0.45, 8, 251)
    curved.plot(x, np.sqrt(1 + 1/x**2), color=GREEN, linewidth=2, label="twisted fibre")
    curved.plot(x, 1/x, "--", color=BLUE, linewidth=2, label="product fibre")
    curved.axhline(1, linestyle=":", color=GREY)
    curved.set_xscale("log", base=2)
    curved.set_xticks([0.5,1,2,4,8], ["1/2","1","2","4","8"])
    curved.xaxis.set_minor_locator(NullLocator())
    curved.set(xlim=(0.45,8), ylim=(0,2.6), xlabel=r"fibre radius $\rho\sqrt{\kappa}$",
               ylabel=r"unit-charge mass $M/\sqrt{\kappa}$", title="Fixed curved base")
    curved.legend(loc="upper right", frameon=False, handlelength=1.2)
    graph(curved)
    return fig


def fibre_winding():
    fig, axes = plt.subplots(1, 2, figsize=(4.9, 2.5), layout="constrained")
    z=np.linspace(0,1,200)
    for ax, twisted in zip(axes, (False, True)):
        rad=np.sqrt(1-z**2) if twisted else np.ones_like(z)
        for side in (-1,1):
            ax.plot(side*rad, z, color=GREY, linewidth=1.2)
        for h in (0,0.25,0.5,0.75,0.92,1):
            r=math.sqrt(1-h*h) if twisted else 1
            ring(ax, r, h, ORANGE if h==0 else BLUE, depth=0.12)
        if twisted:
            ax.plot(0,1,"o",color=GREEN,markersize=5)
            ax.text(0.14,1.13,"one point",ha="center",size=9)
        else:
            ax.text(0,1.22,"a full circle",ha="center",size=9)
        ax.text(0,-0.27,"initial fibre",color=ORANGE,ha="center",size=9)
        ax.set(xlim=(-1.2,1.2),ylim=(-0.38,1.45),aspect="equal")
        ax.set_axis_off()
        ax.set_title(r"Hopf circle in $S^5$" if twisted else r"Circle in $B\times S^1$")
    return fig


def phase_torus():
    fig, ax = plt.subplots(figsize=(4.2, 3.55), layout="constrained")
    # In the square, each segment solves 3u/(2 pi) + v_m/(2 pi) = integer.
    for integer in range(1, 4):
        ax.plot([(integer - 1) / 3, integer / 3], [1, 0],
                color=BLUE, linewidth=2,
                label="QCD minima" if integer == 1 else None)
    u_min, v_min = 1 / 8, 5 / 8
    ax.axvline(u_min, color=ORANGE, linestyle="--", linewidth=2,
               label="Unit string minima")
    ax.plot(u_min, v_min, "o", color=GREEN, markersize=6, zorder=3)
    ax.set(xlim=(0, 1), ylim=(0, 1), aspect="equal",
           xlabel=r"$u/(2\pi)$", ylabel=r"$v_m/(2\pi)$")
    ax.set_xticks([0, u_min, 0.5, 1], ["0", "1/8", "1/2", "1"])
    ax.set_yticks([0, 0.5, v_min, 1], ["0", "1/2", "5/8", "1"])
    for spine in ax.spines.values():
        spine.set_visible(True)
    ax.legend(loc="lower center", bbox_to_anchor=(0.5, 1.02), ncol=2, frameon=False)
    return fig


DRAWINGS = {
    "worldsheet": worldsheet, "circle-spectrum": circle_spectrum,
    "interval-window": interval_window, "m-circle": m_circle, "fibre-winding": fibre_winding,
    "phase-torus": phase_torus,
}

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--pdf-dir", type=Path)
    parser.add_argument("--svg-dir", type=Path)
    opts = parser.parse_args()
    if not (opts.pdf_dir or opts.svg_dir):
        parser.error("supply --pdf-dir or --svg-dir")
    for slug, draw in DRAWINGS.items():
        fig = draw()
        for fmt, folder in (("pdf", opts.pdf_dir), ("svg", opts.svg_dir)):
            if folder:
                folder.mkdir(parents=True, exist_ok=True)
                metadata = {"CreationDate": None} if fmt == "pdf" else {"Date": None}
                path = folder / f"lecture-{slug}.{fmt}"
                fig.savefig(path, metadata=metadata)
                if fmt == "svg":
                    # Matplotlib appends blanks to coordinate lines in SVG paths.
                    lines = path.read_text(encoding="utf-8").splitlines()
                    path.write_text("\n".join(line.rstrip() for line in lines) + "\n", encoding="utf-8")
        plt.close(fig)
