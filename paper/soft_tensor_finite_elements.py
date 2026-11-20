"""Independent trial-bound and finite-element checks of Results 105.4 and 107.1."""

from math import pi

import numpy as np
from scipy.integrate import simpson, solve_ivp
from scipy.optimize import brentq
from scipy.sparse import bmat, csr_matrix, diags, eye, hstack
from scipy.sparse.linalg import spsolve


SHAPE = 0.001
END = 22.0
I3 = 0.769851237589674
Z6 = 0.49604141748
DUAL_NORM = 1 / (4 * pi**2 * Z6)
FIRST_EIGENVALUE = 5


def density(u):
    return 2 * np.exp(u + SHAPE + np.exp(-SHAPE) - np.exp(u))


def background():
    def equation(t, state):
        u, derivative = state
        return derivative, np.expm1(u) * density(u)

    solution = solve_ivp(equation, (0, END), (-SHAPE, 0), rtol=2e-12,
                         atol=8e-15, dense_output=True, method="DOP853")
    if not solution.success:
        raise RuntimeError(solution.message)
    return solution.sol


def profiles(solution, t):
    u, derivative = solution(t)
    p = np.exp(u)
    f2 = density(u)
    curvature_derivative = p * derivative * (2 * p / f2 + p - 2)
    return derivative, p, f2, curvature_derivative


def trial_bound(solution):
    t = np.linspace(0, END, 16001)
    vector, p, f2, curvature_derivative = profiles(solution, t)
    curvature_density = (p * vector**2 + (1 - p)**2 * f2) / 2
    volume = 2 * simpson(f2, x=t)
    period = -simpson(f2 * curvature_derivative * vector, x=t)
    energy = 2 * simpson(f2 * ((1 - p)**2 * f2**2 + 2 * curvature_density * vector**2), x=t) / volume
    norm = 2 * simpson(f2**2 * vector**2, x=t) / volume
    prefactor = 30 * pi * I3 * volume / (DUAL_NORM * period**2)

    def distance_to_mirror(inverse_radius):
        epsilon = (2.6649e-5 * 4704)**2 * (inverse_radius / 4704)**9
        return prefactor * epsilon * (energy + FIRST_EIGENVALUE * epsilon * norm) - (280 / 5496)**2

    crossing = brentq(distance_to_mirror, 1200, 1500)
    print(f"Trial D={volume:.8f}  period={period:.8f}  Q={energy:.8f}  N={norm:.8f}  crossing={crossing:.3f} GeV")
    return volume


def weighted_gram(basis, weights):
    return basis.T @ diags(np.broadcast_to(weights, basis.shape[0])) @ basis


def constrained_minimum(solution, volume, elements):
    step = END / elements
    t = (np.arange(elements) + 0.5) * step
    derivative, p, f2, curvature_derivative = profiles(solution, t)
    area_density = (1 - p) * f2 / 4
    moment = -derivative / 4
    left = eye(elements, elements + 1, format="csr")
    right = eye(elements, elements + 1, k=1, format="csr")
    midpoint = (left + right) / 2
    gradient = (right - left) / step

    # Nodal unknowns are U (odd), z (even), and its primitive q with zero end values.
    u_mid = midpoint[:, 1:]
    u_grad = gradient[:, 1:]
    q_mid = midpoint[:, 1:-1]
    q_grad = gradient[:, 1:-1]
    zero_u = csr_matrix(u_mid.shape)
    zero_z = csr_matrix(midpoint.shape)
    zero_q = csr_matrix(q_mid.shape)
    strain = hstack((u_grad, zero_z, zero_q))
    covariant = hstack((-diags(area_density) @ u_mid, gradient, zero_q))
    local = hstack((-diags(moment) @ u_mid, midpoint, zero_q))
    energy = (weighted_gram(strain, f2) + 16 * weighted_gram(covariant, 1)
              + 16 * weighted_gram(local, f2 * p)) * (6 * I3 * step / volume)
    primitive = hstack((zero_u, zero_z, q_mid))
    energy += weighted_gram(primitive, 4 * pi * Z6 * FIRST_EIGENVALUE * step)

    # Midpoint constraints enforce q'=A'z/pi. Fix the magnetic period to one
    # by normalizing the inverse response of the resulting quadratic form.
    constraints = hstack((zero_u, -diags(area_density / pi) @ midpoint, q_grad))
    magnetic = np.concatenate((u_mid.T @ (-f2 * curvature_derivative * step),
                               np.zeros(2 * elements)))
    system = bmat([[energy, constraints.T], [constraints, None]], format="csc")
    rhs = np.concatenate((magnetic, np.zeros(elements)))
    response = spsolve(system, rhs)[:magnetic.size]
    minimum = 1 / (magnetic @ response)
    return FIRST_EIGENVALUE * 2 * pi * volume * minimum / DUAL_NORM


if __name__ == "__main__":
    solution = background()
    volume = trial_bound(solution)
    for elements in (880, 1760, 3520):
        print(f"step={END / elements:.5f}  Csoft={constrained_minimum(solution, volume, elements):.5f}")
