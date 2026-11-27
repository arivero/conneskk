"""Cubic mass response of result 109 in units of the fixed sphere radius."""
import numpy as np
from scipy.integrate import quad, solve_bvp
from scipy.special import erf

LEFT, RIGHT = -4.0, 4.0
B = 0.5
AREA = 4 * np.pi
H5 = 0.0
LINKS = (0.4, -0.7)
LINK_AMPLITUDES = (1.0, 1.0)


def gaussian_integral(rate, center, y):
    scale = np.sqrt(rate)
    return np.sqrt(np.pi) / (2 * scale) * (
        erf(scale * (y - center)) - erf(scale * (LEFT - center))
    )


def profile(rate, center, y):
    norm = gaussian_integral(rate, center, RIGHT) ** -0.5
    return norm * np.exp(-0.5 * rate * (y - center) ** 2)


def integral(f):
    return quad(f, LEFT, RIGHT, epsabs=2e-12, epsrel=2e-12)[0]


def radial_responses(intercept, link, tolerance):
    cs = (link - intercept) / B
    ch = (H5 - link) / B
    cd = (H5 - intercept) / (2 * B)

    def psi(y):
        return profile(B, cs, y)

    def source(y):
        return profile(B, ch, y) * profile(2 * B, cd, y)

    overlap = integral(lambda y: psi(y) * source(y))

    def primitive(y):
        return quad(lambda z: psi(z) * (source(z) - overlap * psi(z)),
                    LEFT, y, epsabs=2e-13)[0]

    response_zero = integral(lambda y: (primitive(y) / psi(y)) ** 2)

    def ode(y, state):
        potential = (B * (y - cs)) ** 2 - B + 2.0
        return np.vstack((state[1], potential * state[0] - source(y)))

    def robin(low, high):
        return np.array([low[1] + B * (LEFT - cs) * low[0],
                         high[1] + B * (RIGHT - cs) * high[0]])

    grid = np.linspace(LEFT, RIGHT, 121)
    sol = solve_bvp(ode, robin, grid, np.zeros((2, len(grid))), tol=tolerance, max_nodes=12000)
    if not sol.success:
        raise RuntimeError(sol.message)
    response_one = integral(lambda y: source(y) * sol.sol(y)[0])
    return overlap, response_zero, response_one


def family(h_colour, h_lepton, tolerance=1e-9):
    outputs = []
    for intercept in (h_colour, h_lepton):
        rows = [radial_responses(intercept, h, tolerance) for h in LINKS]
        for j in range(2):
            leakage = sum(w**2 * ((row[1] if k == j else 0.0) +
                          (1.0 if k == j else 2.0) * row[2] / 3)
                          for k, (w, row) in enumerate(zip(LINK_AMPLITUDES, rows)))
            outputs.append((LINK_AMPLITUDES[j] * rows[j][0] / np.sqrt(AREA),
                            -leakage / (2 * AREA)))
    return np.asarray(outputs)


if __name__ == "__main__":
    for tol in (1e-7, 1e-9):
        result = family(0.2, -0.3, tol)
        alternating = np.array([1, -1, -1, 1])
        print(f"tolerance {tol:g}")
        for label, (linear, relative) in zip(("u", "d", "nu", "e"), result):
            print(f"{label:2s}  a={linear:.9f}  c/a={relative:.9f}")
        print("log ratio %.9f, quadratic coefficient %.9f" %
              (alternating @ np.log(result[:, 0]), alternating @ result[:, 1]))
