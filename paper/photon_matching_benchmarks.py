"""Numerical light gauge, Proca pair and spectator comparisons for result 96."""

from math import log1p, pi, sqrt

from scipy.integrate import quad
from scipy.special import zeta

from finite_flux_currents import Observations


def light_gauge_contribution(momentum, mass):
    def integrand(x):
        return (8-3*(1-2*x)**2)*log1p(x*(1-x)*(momentum/mass)**2)

    return quad(integrand, 0., 1.)[0]/(4*pi)


def proca_pair_window(gyromagnetic, low, high, mass, upper):
    momentum_low, momentum_high = low**2, high**2

    def integrand(s):
        beta = sqrt(1-4*mass**2/s)
        strength = 2+gyromagnetic**2*s/mass**2+(1+(gyromagnetic-1)*s/(2*mass**2))**2
        return beta**3*strength*(momentum_high-momentum_low)/(
            12*pi*(s+momentum_low)*(s+momentum_high)
        )

    return quad(integrand, 4*mass**2, upper**2)[0]


def spectator_remainder_bound(momentum, radius):
    count, charge_square = 114, 241/6
    tail = (2*count/3)*zeta(3)+2*(charge_square-count/12)*zeta(5)
    return (momentum*radius)**6 * tail/(945*pi)


def main():
    mass = Observations().charged
    for momentum, weak_radius in [(250., sqrt(2)*.000111106),
                                  (400., sqrt(2)*.00006970)]:
        print(f"Q = {momentum:.0f} GeV")
        print(f"  light gauge contribution to inverse alpha = {light_gauge_contribution(momentum, mass):.8f}")
        print(f"  subtracted spectator remainder bound = {spectator_remainder_bound(momentum, weak_radius):.6g}")
    constant = proca_pair_window(0., 125., 250., mass, 500.)
    positive = proca_pair_window(1., 125., 250., mass, 500.)
    negative = proca_pair_window(-1., 125., 250., mass, 500.)
    quadratic, linear = (positive+negative)/2-constant, (positive-negative)/2
    print("Below-circle Proca window in inverse alpha")
    print(f"  polynomial = {quadratic:.8f} g² {linear:+.8f} g {constant:+.8f}")
    print(f"  minimum = {constant-linear**2/(4*quadratic):.8f}")


if __name__ == "__main__":
    main()
