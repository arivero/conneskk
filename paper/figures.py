#!/usr/bin/env python3
"""Reproducible, source-based plots for the HTML discussion."""

import html
import math
from pathlib import Path


WIDTH, HEIGHT = 760, 440
LEFT, RIGHT, TOP, BOTTOM = 82, 738, 87, 362
BLUE, RUST, GREEN = "#176887", "#a94e29", "#276b4f"


def vector_poles(theta):
    """Return l*M_W and l*M_Z on the lowest nonnegative branch."""
    if not 0 <= theta <= math.pi / 2:
        raise ValueError("theta must lie between 0 and pi/2")
    sin_two_theta = math.sin(2 * theta)
    return (
        math.asin(sin_two_theta / math.sqrt(2)),
        math.asin(2 * sin_two_theta / math.sqrt(5)),
    )


def heat_dimension(s):
    """Evaluate d log S / d log s for the unshifted circle heat trace."""
    if not math.isfinite(s) or s < 0:
        raise ValueError("s must be finite and nonnegative")
    # At these extremes the corrections are below floating-point resolution.
    if s < 0.1:
        return 0.0
    if s >= 27:
        return 1.0
    # Poisson summation keeps the Gaussian rate at least pi.
    direct = s <= math.sqrt(math.pi)
    rate = (math.pi / s) ** 2 if direct else s**2
    terms = [math.exp(-rate * n * n) for n in range(1, 17)]
    weighted = math.fsum(n * n * term for n, term in enumerate(terms, 1))
    trace = 1 + 2 * math.fsum(terms)
    if direct:
        return (4 * math.pi**2 / s**2) * weighted / trace
    return 1 - 4 * s**2 * weighted / trace


def opening_scales(epsilon):
    """The interval family with alpha=1/3, beta=2/3 and unit inputs."""
    if not 0 < epsilon <= 0.1:
        raise ValueError("epsilon must lie in (0, 0.1]")
    return epsilon, epsilon ** (2 / 3), math.pi * epsilon ** (1 / 3) - epsilon


def point(x, y, xmin, xmax, ymin, ymax):
    return (
        LEFT + (x - xmin) * (RIGHT - LEFT) / (xmax - xmin),
        BOTTOM - (y - ymin) * (BOTTOM - TOP) / (ymax - ymin),
    )


def text(x, y, value, *, size=14, anchor="middle", fill="#344c51", extra=""):
    return (
        f'<text x="{x:.2f}" y="{y:.2f}" text-anchor="{anchor}" '
        f'font-size="{size}" fill="{fill}" {extra}>{html.escape(value)}</text>'
    )


def chart(title, description, x_range, y_range, x_ticks, y_ticks, x_label, y_label, curves):
    xmin, xmax = x_range
    ymin, ymax = y_range
    parts = [
        f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {WIDTH} {HEIGHT}" '
        'role="img" aria-labelledby="plot-title plot-description">',
        f"<title id=\"plot-title\">{html.escape(title)}</title>",
        f"<desc id=\"plot-description\">{html.escape(description)}</desc>",
        '<rect width="760" height="440" fill="#ffffff"/>',
        '<g font-family="system-ui, sans-serif">',
        text(24, 31, title, size=20, anchor="start", fill="#183640", extra='font-weight="700"'),
        '<defs><clipPath id="plot-area"><rect x="82" y="87" width="656" height="275"/></clipPath></defs>',
    ]
    for x_value, label in x_ticks:
        x, _ = point(x_value, ymin, xmin, xmax, ymin, ymax)
        parts.append(f'<line x1="{x:.2f}" y1="{TOP}" x2="{x:.2f}" y2="{BOTTOM}" stroke="#e1e9e5"/>')
        parts.append(text(x, BOTTOM + 24, label))
    for y_value, label in y_ticks:
        _, y = point(xmin, y_value, xmin, xmax, ymin, ymax)
        parts.append(f'<line x1="{LEFT}" y1="{y:.2f}" x2="{RIGHT}" y2="{y:.2f}" stroke="#e1e9e5"/>')
        parts.append(text(LEFT - 12, y + 5, label, anchor="end"))
    parts.append(
        f'<path d="M {LEFT} {TOP} V {BOTTOM} H {RIGHT}" '
        'fill="none" stroke="#51696b" stroke-width="1.5"/>'
    )
    parts.append(text((LEFT + RIGHT) / 2, 426, x_label, size=16))
    parts.append(
        text(22, (TOP + BOTTOM) / 2, y_label, size=16,
             extra=f'transform="rotate(-90 22 {(TOP + BOTTOM) / 2})"')
    )
    for curve in curves:
        dash = f' stroke-dasharray="{curve["dash"]}"' if curve.get("dash") else ""
        x = curve["legend_x"]
        parts.append(
            f'<line x1="{x}" y1="61" x2="{x + 29}" y2="61" '
            f'stroke="{curve["color"]}" stroke-width="3"{dash}/>'
        )
        parts.append(text(x + 36, 66, curve["label"], size=14, anchor="start"))
        positions = [point(xv, yv, xmin, xmax, ymin, ymax) for xv, yv in curve["points"]]
        path = " ".join(
            ("M" if i == 0 else "L") + f"{px:.3f},{py:.3f}"
            for i, (px, py) in enumerate(positions)
        )
        parts.append(
            f'<path data-series="{html.escape(curve["id"], quote=True)}" d="{path}" '
            f'fill="none" stroke="{curve["color"]}" stroke-width="3" '
            f'stroke-linejoin="round" stroke-linecap="round" clip-path="url(#plot-area)"{dash}/>'
        )
    parts.append("</g></svg>\n")
    return "\n".join(parts)


def interval_figure():
    w, z, fermion = [], [], []
    for i in range(321):
        x = i / 320
        theta = x * math.pi / 2
        mass_w, mass_z = vector_poles(theta)
        w.append((x, 2 * mass_w / math.pi))
        z.append((x, 2 * mass_z / math.pi))
        fermion.append((x, x))
    return chart(
        "Interval vector poles",
        "On the lowest nonnegative branch, W and Z rise from zero to a maximum "
        "at half the horizontal range and return to zero. The universal fermion "
        "mass rises linearly from zero to one. Endpoint values are limits.",
        (0, 1), (0, 1.05),
        [(0, "0"), (.25, "0.25"), (.5, "0.5"), (.75, "0.75"), (1, "1")],
        [(0, "0"), (.2, "0.2"), (.4, "0.4"), (.6, "0.6"), (.8, "0.8"), (1, "1")],
        "θ / (π/2)", "2l × mass / π",
        [
            {"id": "w", "label": "W vector", "color": BLUE, "legend_x": 90, "points": w},
            {"id": "z", "label": "Z vector", "color": RUST, "dash": "8 5", "legend_x": 240, "points": z},
            {"id": "fermion", "label": "Fermion m", "color": GREEN, "dash": "2 5", "legend_x": 390, "points": fermion},
        ],
    )


def heat_figure():
    values = [(5 * i / 400, heat_dimension(5 * i / 400)) for i in range(401)]
    return chart(
        "Heat-trace effective dimension",
        "The effective dimension starts at zero, rises through approximately "
        "0.72 at s=2, and approaches one by s=5.",
        (0, 5), (0, 1.05),
        [(i, str(i)) for i in range(6)],
        [(0, "0"), (.2, "0.2"), (.4, "0.4"), (.6, "0.6"), (.8, "0.8"), (1, "1")],
        "s = lΛ", "d(s)",
        [{"id": "dimension", "label": "Unshifted circle heat trace", "color": BLUE,
          "legend_x": 90, "points": values}],
    )


def opening_figure():
    mass, window, discarded = [], [], []
    for i in range(321):
        exponent = -6 + 5 * i / 320
        epsilon = 10**exponent
        m, energy, delta = opening_scales(epsilon)
        mass.append((exponent, math.log10(m)))
        window.append((exponent, math.log10(energy)))
        discarded.append((exponent, math.log10(delta)))
    return chart(
        "Opening-window hierarchy",
        "On logarithmic axes, the light mass and moving window fall faster "
        "than the first discarded level as epsilon approaches zero.",
        (-6, -1), (-6, .5),
        [(-6, "10⁻⁶"), (-5, "10⁻⁵"), (-4, "10⁻⁴"), (-3, "10⁻³"), (-2, "10⁻²"), (-1, "10⁻¹")],
        [(-6, "10⁻⁶"), (-5, "10⁻⁵"), (-4, "10⁻⁴"), (-3, "10⁻³"), (-2, "10⁻²"), (-1, "10⁻¹"), (0, "1")],
        "ε (log scale)", "Energy scale (log scale)",
        [
            {"id": "mass", "label": "Light scale m", "color": BLUE, "legend_x": 86, "points": mass},
            {"id": "window", "label": "Moving window E", "color": RUST, "dash": "8 5", "legend_x": 252, "points": window},
            {"id": "discarded", "label": "Discarded level Δ", "color": GREEN, "dash": "2 5", "legend_x": 458, "points": discarded},
        ],
    )


FIGURES = {
    "interval-poles.svg": interval_figure,
    "heat-dimension.svg": heat_figure,
    "opening-hierarchy.svg": opening_figure,
}


def write_figures(directory):
    directory = Path(directory)
    directory.mkdir(parents=True, exist_ok=True)
    for name, render in FIGURES.items():
        (directory / name).write_text(render(), encoding="utf-8")
