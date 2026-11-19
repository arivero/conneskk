"""Draw the scale windows, gauge generators and running in the summer lectures."""

import argparse
from pathlib import Path

import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.ticker import NullLocator


BLUE = "#155e80"
RUST = "#a94e29"
GREEN = "#247157"
INK = "#243639"
GREY = "#53686b"
GRID = "#dfe7e6"


def set_style():
    plt.rcParams.update({
        "font.size": 10,
        "axes.labelsize": 10,
        "axes.edgecolor": GREY,
        "axes.labelcolor": INK,
        "axes.spines.top": False,
        "axes.spines.right": False,
        "text.color": INK,
        "xtick.color": GREY,
        "ytick.color": GREY,
        "legend.fontsize": 9.5,
        "pdf.fonttype": 42,
        "svg.fonttype": "none",
        "svg.hashsalt": "conneskk-summer-lecture",
    })


def window():
    fig, ax = plt.subplots(figsize=(4.25, 2.65), layout="constrained")
    edges = [0, 1.25, 2.65, 4]
    labels = [r"$S^5$", r"$S^5\times I_\ell$", r"$S^5\times I_\ell\times I_d$"]
    for low, high, dim, label in zip(edges, edges[1:], (5, 6, 7), labels):
        ax.fill_between([low, high], 4.6, dim, color=BLUE, alpha=0.08)
        ax.text((low + high) / 2, dim - 0.24, label, ha="center", color=BLUE)
    ax.stairs([5, 6, 7], edges, baseline=None, color=BLUE, linewidth=2.1)
    ax.vlines(edges[1:-1], 4.6, [6, 7], color=GREY, linewidth=0.75, linestyle=":")
    ax.set(xlim=(edges[0], edges[-1]), ylim=(4.6, 7.2), yticks=[5, 6, 7],
           xlabel="probe energy (schematic log scale)", ylabel="resolved internal directions")
    ax.set_xticks(edges[1:-1], [r"$\pi/\ell$", r"$\pi/d$"])
    ax.text(0.03, 0.94, r"$E\gg R^{-1}$,  $R\gg\ell\gg d$",
            transform=ax.transAxes, va="top", color=GREY)
    return fig


def shared_circle():
    fig, ax = plt.subplots(figsize=(4.3, 2.95), layout="constrained")
    ax.set(xlim=(0, 1), ylim=(0, 1))
    ax.set_axis_off()
    style = {"boxstyle": "round,pad=0.38", "facecolor": "white", "linewidth": 0.85}
    ax.text(0.23, 0.92, "Weak symmetry restored", ha="center", weight="semibold")
    ax.text(0.79, 0.92, "Below weak breaking", ha="center", weight="semibold")
    ax.text(0.23, 0.81, r"$SU(2)_w\times U(1)_Y$", ha="center", color=GREY)
    ax.text(0.79, 0.81, r"$U(1)_Q$", ha="center", color=GREY)
    ax.text(0.5, 0.67, r"Colour $\mathfrak{su}(3)$   ·   8 generators", ha="center",
            bbox={**style, "edgecolor": GREY})
    points = (
        (0.15, 0.48, r"$Y$", BLUE),
        (0.36, 0.48, r"$T_3$", GREEN),
        (0.25, 0.27, r"$T_1,\,T_2$", GREEN),
        (0.81, 0.48, r"$Q=T_3+Y$", BLUE),
    )
    for x, y, label, colour in points:
        ax.text(x, y, label, color=colour, ha="center", va="center",
                bbox={**style, "edgecolor": colour}, zorder=3)
    for start, colour, bend in [((0.18, 0.48), BLUE, -0.18), ((0.39, 0.48), GREEN, 0.17)]:
        ax.annotate("", xy=(0.68, 0.48), xytext=start, zorder=2,
                    arrowprops={"arrowstyle": "->", "color": colour, "linewidth": 1.25,
                                "connectionstyle": f"arc3,rad={bend}"})
    ax.text(0.25, 0.11, r"$8+3+1=12$ generators", ha="center", color=GREY)
    ax.text(0.81, 0.11, r"$8+1=9$ generators", ha="center", color=GREY)
    return fig


def running():
    fig, ax = plt.subplots(figsize=(4.35, 3.05), layout="constrained")
    start, mirror, boson, upper = 0.25, 0.28, 3.961, 5.496  # TeV
    reference = 0.76985
    u = np.geomspace(start, boson, 250)
    u = np.sort(np.append(u, mirror))
    projected = np.geomspace(boson, upper, 65)
    denom = 8 * np.pi**2

    def spectator(scale):
        return reference + 7 * np.log(scale / start) / denom

    def paired(scale):
        return spectator(scale) - 4 * np.maximum(0, np.log(scale / mirror)) / denom

    for curve, colour, label in ((spectator, BLUE, "S · spectators"), (paired, RUST, "P · paired")):
        ax.plot(u, curve(u), color=colour, linewidth=2.1, label=label)
        ax.plot(projected, curve(projected), ":", color=colour, linewidth=2.2)
        ax.plot(boson, curve(boson), "o", color=colour, markersize=4)
    ax.axvspan(boson, upper, color=GREY, alpha=0.08)
    ax.set_xscale("log")
    ax.set(xlim=(0.233, 5.9), ylim=(0.75, 1.073), xlabel=r"subtraction scale $\mu$ (TeV)",
           ylabel=r"$I(\mu)=1/[4\pi\alpha_s(\mu)]$")
    ax.set_xticks(
        [start, 0.5, 1, 2, boson, upper],
        ["0.25", "0.5", "1", "2", "$M_g$\n3.961", "$U$\n5.496"],
    )
    ax.tick_params(axis="x", labelsize=9)
    ax.get_xticklabels()[-2].set_horizontalalignment("right")
    ax.xaxis.set_minor_locator(NullLocator())
    ax.set_yticks([0.8, 0.9, 1.0])
    ax.annotate("P mirror threshold\n0.280 TeV", xy=(mirror, paired(mirror)),
                xytext=(0.49, 0.774), ha="left", va="center", size=9,
                arrowprops={"arrowstyle": "-", "color": GREY})
    ax.text(0.99, 0.97, "Dotted · quarks and gluons only", transform=ax.transAxes,
            ha="right", va="top", size=9, color=GREY)
    ax.grid(axis="y", color=GRID, linewidth=0.7)
    ax.set_axisbelow(True)
    ax.legend(loc="upper left", frameon=False, handlelength=1.6)
    return fig


def soft_mode():
    fig, ax = plt.subplots(figsize=(4.25, 2.95), layout="constrained")
    epsilon = np.geomspace(1e-6, 1e-3, 180)
    ax.loglog(epsilon, 6598 * epsilon**2, color=BLUE, linewidth=2.1,
              label=r"asymptote $6598(a/B)^2$")
    ax.axhline(1, color=RUST, linestyle="--", linewidth=1.7, label="constant gap (illustrative)")
    ax.set(xlim=(8e-7, 1.25e-3), ylim=(2e-9, 3.5),
           xlabel=r"weak-to-colour radius ratio $a/B$", ylabel=r"comoving squared mass $B^2M^2$")
    ax.set_xticks([1e-6, 1e-5, 1e-4, 1e-3])
    ax.set_yticks([1e-8, 1e-6, 1e-4, 1e-2, 1])
    ax.xaxis.set_minor_locator(NullLocator())
    ax.yaxis.set_minor_locator(NullLocator())
    ax.annotate("late shrink", xy=(2.1e-6, 1.5e-3), xytext=(2.7e-5, 1.5e-3),
                va="center", ha="left", size=9, color=GREY,
                arrowprops={"arrowstyle": "->", "color": GREY, "linewidth": 0.9})
    ax.grid(axis="y", color=GRID, linewidth=0.7)
    ax.set_axisbelow(True)
    ax.legend(loc="upper left", bbox_to_anchor=(0, -0.18), frameon=False, handlelength=1.7)
    return fig


DRAWINGS = {
    "summer-window": window,
    "summer-shared-circle": shared_circle,
    "summer-running": running,
    "summer-soft-mode": soft_mode,
}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--pdf-dir", type=Path)
    parser.add_argument("--svg-dir", type=Path)
    args = parser.parse_args()
    if not (args.pdf_dir or args.svg_dir):
        parser.error("supply --pdf-dir or --svg-dir")
    set_style()
    for name, draw in DRAWINGS.items():
        fig = draw()
        if args.pdf_dir:
            args.pdf_dir.mkdir(parents=True, exist_ok=True)
            fig.savefig(args.pdf_dir / f"{name}.pdf", metadata={"CreationDate": None})
        if args.svg_dir:
            args.svg_dir.mkdir(parents=True, exist_ok=True)
            path = args.svg_dir / f"{name}.svg"
            fig.savefig(path, metadata={"Date": None})
            # Matplotlib leaves padding on SVG path coordinate lines.
            lines = path.read_text(encoding="utf-8").splitlines()
            path.write_text("\n".join(line.rstrip() for line in lines) + "\n", encoding="utf-8")
        plt.close(fig)


if __name__ == "__main__":
    main()
