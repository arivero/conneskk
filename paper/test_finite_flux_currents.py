import unittest

import numpy as np
from scipy.linalg import eigvalsh, solve

from dual_tensor_currents import WeakFit, fit_at_mass
from finite_flux_currents import fit, neutral_pencil, radial_basis
from hopf_transverse_currents import HopfModel, fit as fit_hopf
from weak_current_spectrum import charged_pencil


class FiniteCurrentTests(unittest.TestCase):
    def test_charged_flux_changes_pole_but_preserves_static_currents(self):
        grid, basis, _, _, _ = radial_basis(6., 10)
        contacts, poles = [], []
        for flux in (0., .6):
            mass, kinetic, currents, _ = charged_pencil(
                grid, basis, stiffness=.12, circle_ratio=.055, period=6, flux=flux
            )
            contacts.append(currents.T @ solve(mass, currents, assume_a="pos"))
            poles.append(eigvalsh(mass, kinetic, subset_by_index=(0, 0))[0])
        np.testing.assert_allclose(contacts[0], contacts[1], rtol=1e-8)
        self.assertLess(poles[1], .9 * poles[0])

    def test_photon_subtraction_preserves_the_singlet_charge_relation(self):
        grid, _, scalar, derivative, _ = radial_basis(6., 10)
        mass, kinetic, currents, photon = neutral_pencil(grid, scalar, derivative, .12, .055, 6, .6)
        self.assertGreater(eigvalsh(mass)[0], 0.)
        self.assertGreater(eigvalsh(kinetic)[0], 0.)
        averaged = grid.average * grid.f2
        mu = -grid.ut / 4
        expected_photon = averaged @ ((1 + .6**2) * grid.f2 + 16 * mu**2 + 1/(6*.055)**2)
        self.assertAlmostEqual(photon, expected_photon, places=11)
        electron_r, up_r, down_r = currents[:, 2], currents[:, 6], currents[:, 7]
        np.testing.assert_allclose(2 * up_r - 5 * down_r + 3 * electron_r, 0., atol=1e-12)

    def test_pole_inputs_predict_fermi_and_neutrino_contacts(self):
        point = fit(6, 2000., 6, hold_out_fermi=True, fixed_flux=1.)
        self.assertAlmostEqual(point["sin2_z"], .23148, places=7)
        self.assertAlmostEqual(point["z_lepton_width"], .08379628, places=7)
        self.assertAlmostEqual(point["fermi"], 1.16093e-5, delta=1e-10)
        self.assertAlmostEqual(point["vector"], -.0374245, places=5)
        self.assertAlmostEqual(point["axial"], -.5053142, places=5)

    def test_root_phase_compensator_preserves_equal_normalized_vertices(self):
        point = fit(6, 2000., 6, include_phase=True)
        self.assertAlmostEqual(point["qcd_axion_decay_constant"], 41.0045, places=3)
        for species in ("electron", "up", "down"):
            self.assertAlmostEqual(point[f"phase_{species}_yukawa_per_mass"], .00405823, places=7)

    def test_two_period_fit_uses_one_tensor_coefficient(self):
        branches = fit_at_mass(WeakFit(degree=6), 500.)
        self.assertEqual(len(branches), 2)
        for point in branches:
            self.assertAlmostEqual(2*np.pi*point["weak_area"]*point["f_e"]*point["f_m"], 1., places=11)
            self.assertAlmostEqual(point["fermi"], 1.1663785e-5, delta=1e-11)
        self.assertLess(branches[0]["f_e"], 7*branches[0]["f_m"])
        self.assertGreater(branches[1]["f_e"], 7*branches[1]["f_m"])

    def test_round_charged_tensor_poles_include_both_polarizations(self):
        grid, basis, _, _, _ = radial_basis(27., 1)
        e, m = .11, .07
        mass, kinetic, _, _ = charged_pencil(grid, basis, stiffness=0., circle_ratio=.05,
                                              period=6, flux=e, magnetic_flux=m)
        residual = np.array([[1., 1., 0., 0.], [0., e, 1., 0.], [2*m, 7*m, 0., 1.]])
        expected = np.sort(np.r_[0., 1., eigvalsh(residual @ residual.T)])
        np.testing.assert_allclose(eigvalsh(mass, kinetic), expected, atol=1e-8)

    def test_finite_hopf_form_pole_is_distinct_from_the_locking_pole(self):
        point = fit_hopf(WeakFit(degree=6), HopfModel())
        self.assertAlmostEqual(point["neutral"], 91.15377253, places=4)
        self.assertAlmostEqual(point["locking_mass"], 6682.78, delta=.1)
        self.assertAlmostEqual(point["five_form_mass"], 23174.43, delta=.1)
        self.assertGreater(point["neutral_heavy_probe_fraction"], .999)
        self.assertAlmostEqual(point["e_star_squared"], .097661108, places=7)


if __name__ == "__main__":
    unittest.main()
