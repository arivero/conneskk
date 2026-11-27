"""Angular tower determinant differences in the subtraction of result 109."""
import numpy as np
from interval_mass_response import LEFT, RIGHT, B, LINKS, H5, kernel_tower_logdet


def scaled_dirichlet(lam, rate, center, cells):
    """End value of exp(-lambda*L)Y by exact positive cell transfers."""
    step = (RIGHT - LEFT) / cells
    y = np.zeros_like(lam)
    v = 1 / lam
    for i in range(cells):
        x = LEFT + (i + 0.5) * step
        potential = rate**2 * (x-center)**2 + rate
        alpha = np.sqrt(lam**2 + potential)
        grow = np.exp(step * potential / (alpha+lam))
        fall = np.exp(-2*step*alpha)
        cosine = 0.5 * grow * (1+fall)
        sine = -0.5 * grow * np.expm1(-2*step*alpha)
        y, v = cosine*y + sine*(lam/alpha)*v, sine*(alpha/lam)*y + cosine*v
    return y


def angular_difference(before, after, max_k, cells):
    k = np.arange(1, max_k+1, dtype=float)
    length = RIGHT - LEFT
    sums = np.zeros_like(k)
    tail = 0.0
    for n, intercept in ((2, H5), (1, LINKS[0]), (1, LINKS[1])):
        rate = n*B
        c0, c1 = (intercept-before)/rate, (intercept-after)/rate
        lam = np.sqrt(k*(k+n))  # radius one
        y0 = scaled_dirichlet(lam, rate, c0, cells)
        y1 = scaled_dirichlet(lam, rate, c1, cells)
        end = np.array([LEFT, RIGHT])
        v0 = rate**2*(end-c0)**2 + rate
        v1 = rate**2*(end-c1)**2 + rate
        difference = v1-v0
        integral = length*difference.mean()  # difference is affine
        local = integral/(2*lam)-difference.sum()/(4*lam**2)
        sums += 2*(2*k+n)*(np.log1p((y1-y0)/y0)-local)
        vmax = max(v0.max(), v1.max())
        dmax = np.abs(difference).max()
        slope = abs(difference[1]-difference[0])/length
        # For lambda*length >= 1, absorb the two exponential terms
        # in dmax/(lambda^3*length), using z exp(-2z), z^2/(exp(2z)-1).
        coeff = (length*vmax*dmax+slope)/4+dmax/length
        tail += 2*(2+n/(max_k+1))*coeff/max_k
    base = kernel_tower_logdet(after)-kernel_tower_logdet(before)
    return base, sums.sum(), tail


if __name__ == "__main__":
    for kmax, grid in ((128, 512), (512, 1024), (2048, 2048), (2048, 4096)):
        zero, other, bound = angular_difference(0.2, 0.25, kmax, grid)
        print(f"k={kmax:4d}, cells={grid:4d}, angular={other:.8f}, "
              f"total={zero+other:.8f}, tail<={bound:.7f}, "
              f"kinetic={-(zero+other)/(24*np.pi**2):.9f}")


def third_shape_difference(start, shift, max_k, cells):
    counts = []
    for j in range(3):
        low, other, _ = angular_difference(start+j*shift, start+(j+1)*shift, max_k, cells)
        counts.append(low+other)
    triple = counts[0]-2*counts[1]+counts[2]
    tail = 0.0
    for n, h in ((2, H5), (1, LINKS[0]), (1, LINKS[1])):
        bound = 2*max(abs(n*B*y+t-h) for y in (LEFT, RIGHT)
                      for t in (start, start+3*shift))
        tail += (shift**3 * (RIGHT-LEFT)/4 * 2*(2+n/(max_k+1))
                 * (2*bound**3/(3*max_k**3)+6*bound/max_k))
    return triple, tail


if __name__ == "__main__":
    for kmax, grid in ((512, 1024), (2048, 2048), (2048, 4096)):
        triple, bound = third_shape_difference(0.2, 0.15, kmax, grid)
        print(f"third difference k={kmax}, cells={grid}: log={triple:.8f}, "
              f"tail<={bound:.7f}, kinetic={-triple/(24*np.pi**2):.9f}")
