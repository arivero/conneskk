"""Exact circle heat sums for a scale-dependent 9/10/11 illustration."""
from pathlib import Path
import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt

def circle_dimension(x):
    # Poisson asymptotic is exponentially accurate in the small-x tail.
    out = np.ones_like(x)
    for j, value in enumerate(x):
        if value > 0.04:
            n = np.arange(-max(20, int(np.ceil(np.sqrt(40/value)))),
                          max(20, int(np.ceil(np.sqrt(40/value))))+1)
            weights = np.exp(-value*n*n)
            out[j] = 2*value*np.sum(n*n*weights)/np.sum(weights)
    return out

if __name__ == '__main__':
    energy = np.geomspace(.1, 3000, 1000)
    s = energy**-2
    dimension = 9 + circle_dimension(s) + circle_dimension(s/.01**2)
    plt.rcParams.update({'font.family':'DejaVu Sans','font.size':12})
    fig, ax = plt.subplots(figsize=(4.7,3.2),layout='constrained')
    ax.semilogx(energy,dimension,color='#0f6667',lw=2.7)
    for level,label in [(9,'Base + spacetime'),(10,'One circle resolved'),(11,'Two circles resolved')]:
        ax.axhline(level,color='#d8dfdf',lw=.8,zorder=0)
    ax.set(xlabel=r'Resolution $E$ (in units of $1/a$)',ylabel='Effective dimension',
           ylim=(8.9,11.17),yticks=[9,10,11],xlim=(.1,3000))
    ax.spines[['top','right']].set_visible(False)
    ax.tick_params(axis='both',labelsize=11)
    root=Path(__file__).resolve().parent
    fig.savefig(root/'heat_staircase.png',dpi=240)
    fig.savefig(root/'heat_staircase.pdf')
