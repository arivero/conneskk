"""Reproduce the constrained axial variational estimate in result 107."""

from math import pi

import numpy as np
from scipy.integrate import cumulative_trapezoid
from scipy.linalg import null_space, solve

from weak_current_spectrum import spline_values, vortex


def gram(basis, weights):
    """Matrix of the weighted quadratic form in the supplied basis."""
    return basis.T @ (weights[:, None] * basis)


def parity_basis(splines):
    middle = splines.shape[1] // 2
    right = splines[:, middle + 1:]
    left = splines[:, :middle][:, ::-1]
    return right - left, np.column_stack((splines[:, middle], right + left))


def main():
    meridian = np.linspace(-16, 16, 16001)
    profile, log_derivative, metric, cap = vortex(meridian, 0.001, 25)
    volume = np.trapezoid(metric, meridian)
    area_density = (1 - profile) * metric / 4
    moment = -log_derivative / 4
    curvature_derivative = profile * log_derivative * (2 * profile / metric + profile - 2)
    weights = np.full_like(meridian, meridian[1] - meridian[0])
    weights[[0, -1]] *= 0.5
    z6 = 0.49604141748
    i3 = 0.769851237589674
    dual_norm = 1 / (4 * pi**2 * z6)

    for spacing in (1, 0.5, 0.25, 0.125):
        splines, derivatives, _ = spline_values(meridian, spacing, cap)
        odd, even = parity_basis(splines)
        odd_prime, even_prime = parity_basis(derivatives)
        area = np.trapezoid(even * area_density[:, None], meridian, axis=0)
        area_free = null_space(area[None, :])
        even = even @ area_free
        even_prime = even_prime @ area_free

        gradient = np.column_stack((odd_prime, np.zeros_like(even)))
        covariant = np.column_stack((-area_density[:, None] * odd, even_prime))
        local = np.column_stack((-moment[:, None] * odd, even))
        energy = (gram(gradient, weights * metric) + 16 * gram(covariant, weights)
                  + 16 * gram(local, weights * metric * profile)) / volume
        primitive = cumulative_trapezoid(
            even * area_density[:, None] / pi, meridian, axis=0, initial=0
        )
        tensor = np.column_stack((np.zeros_like(odd), primitive))
        energy += z6 * 5 / (3 * i3) * (2 * pi) * gram(tensor, weights)

        linear = -0.5 * np.trapezoid(
            (metric * curvature_derivative)[:, None] * odd, meridian, axis=0
        )
        constraint = np.concatenate((linear, np.zeros(even.shape[1])))
        minimum = 1 / (constraint @ solve(energy, constraint, assume_a="pos"))
        coefficient = 5 * (2 * pi * volume) / dual_norm * (3 * i3) * minimum
        print(spacing, minimum, coefficient)


if __name__ == "__main__":
    main()
