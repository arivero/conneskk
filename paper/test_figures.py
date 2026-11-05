import math
from pathlib import Path
import re
import tempfile
import unittest
import xml.etree.ElementTree as ET

import figures


class FormulaTests(unittest.TestCase):
    def test_interval_poles_and_limits(self):
        self.assertEqual(figures.vector_poles(0), (0, 0))
        w, z = figures.vector_poles(math.pi / 4)
        self.assertAlmostEqual(w, math.pi / 4)
        self.assertAlmostEqual(z, math.atan(2))
        w, z = figures.vector_poles(math.pi / 2)
        self.assertAlmostEqual(w, 0)
        self.assertAlmostEqual(z, 0)
        theta = 1e-5
        w, z = figures.vector_poles(theta)
        self.assertAlmostEqual(w / theta, math.sqrt(2), places=9)
        self.assertAlmostEqual(z / theta, 4 / math.sqrt(5), places=9)
        with self.assertRaises(ValueError):
            figures.vector_poles(-0.1)

    def test_heat_dimension_against_poisson_sum(self):
        self.assertEqual(figures.heat_dimension(0), 0)
        self.assertEqual(figures.heat_dimension(1e-300), 0)
        self.assertEqual(figures.heat_dimension(1e300), 1)
        for s in (1, 1.5, 2, 2.5, 3, 5):
            terms = [math.exp(-(s * n) ** 2) for n in range(1, 30)]
            reference = 1 - 4 * s**2 * math.fsum(
                n * n * term for n, term in enumerate(terms, 1)
            ) / (1 + 2 * math.fsum(terms))
            self.assertAlmostEqual(figures.heat_dimension(s), reference, places=12)
            direct_terms = [math.exp(-((math.pi * n / s) ** 2)) for n in range(1, 50)]
            direct_reference = 4 * math.pi**2 / s**2 * math.fsum(
                n * n * term for n, term in enumerate(direct_terms, 1)
            ) / (1 + 2 * math.fsum(direct_terms))
            self.assertAlmostEqual(figures.heat_dimension(s), direct_reference, places=12)
        for s, coefficient in ((.3, 1.5000), (1, 1.4990), (1.5, 1.3935),
                               (2, 1.1414), (2.5, 1.0240), (3, 1.0022), (5, 1.0000)):
            self.assertAlmostEqual((3 - figures.heat_dimension(s)) / 2, coefficient, delta=.00005)
        with self.assertRaises(ValueError):
            figures.heat_dimension(-1)
        with self.assertRaises(ValueError):
            figures.heat_dimension(float("inf"))

    def test_opening_scales(self):
        for exponent in range(-6, 0):
            epsilon = 10**exponent
            mass, window, discarded = figures.opening_scales(epsilon)
            self.assertAlmostEqual(mass, epsilon)
            self.assertAlmostEqual(window, epsilon ** (2 / 3))
            self.assertAlmostEqual(discarded, math.pi * epsilon ** (1 / 3) - epsilon)
            self.assertLess(mass, window)
            self.assertLess(window, discarded)
            self.assertLess(epsilon ** (2 / 3), math.pi / 2)
        with self.assertRaises(ValueError):
            figures.opening_scales(0)


class SvgTests(unittest.TestCase):
    namespace = {"svg": "http://www.w3.org/2000/svg"}

    def coordinates(self, svg, series):
        root = ET.fromstring(svg)
        path = root.find(f'.//svg:path[@data-series="{series}"]', self.namespace)
        return [
            (float(x), float(y))
            for x, y in re.findall(r"[ML](-?\d+\.\d+),(-?\d+\.\d+)", path.attrib["d"])
        ]

    def assert_point(self, actual, x, y, x_range, y_range):
        xmin, xmax = x_range
        ymin, ymax = y_range
        expected_x = figures.LEFT + (x - xmin) * (figures.RIGHT - figures.LEFT) / (xmax - xmin)
        expected_y = figures.BOTTOM - (y - ymin) * (figures.BOTTOM - figures.TOP) / (ymax - ymin)
        self.assertAlmostEqual(actual[0], expected_x, delta=.001)
        self.assertAlmostEqual(actual[1], expected_y, delta=.001)

    def test_accessible_figures_and_paths(self):
        cases = [
            (figures.interval_figure(), {"w", "z", "fermion"}),
            (figures.heat_figure(), {"dimension"}),
            (figures.opening_figure(), {"mass", "window", "discarded"}),
        ]
        for svg, expected in cases:
            root = ET.fromstring(svg)
            self.assertTrue(root.find("svg:title", self.namespace).text)
            self.assertTrue(root.find("svg:desc", self.namespace).text)
            paths = root.findall(".//svg:path[@data-series]", self.namespace)
            self.assertEqual({path.attrib["data-series"] for path in paths}, expected)
            for path in paths:
                coordinates = re.findall(r"[ML](-?\d+\.\d+),(-?\d+\.\d+)", path.attrib["d"])
                self.assertGreaterEqual(len(coordinates), 321)
                self.assertTrue(all(
                    figures.LEFT <= float(x) <= figures.RIGHT
                    and figures.TOP <= float(y) <= figures.BOTTOM
                    for x, y in coordinates
                ))

    def test_all_plotted_curves_match_formulas(self):
        interval = figures.interval_figure()
        interval_midpoints = {"w": .5, "z": 2 * math.atan(2) / math.pi, "fermion": .5}
        for series, value in interval_midpoints.items():
            coordinates = self.coordinates(interval, series)
            self.assert_point(coordinates[160], .5, value, (0, 1), (0, 1.05))

        s = 2
        terms = [math.exp(-(s * n) ** 2) for n in range(1, 30)]
        dimension = 1 - 4 * s**2 * math.fsum(
            n * n * term for n, term in enumerate(terms, 1)
        ) / (1 + 2 * math.fsum(terms))
        heat = self.coordinates(figures.heat_figure(), "dimension")
        self.assert_point(heat[160], s, dimension, (0, 5), (0, 1.05))

        epsilon = 1e-4
        opening = figures.opening_figure()
        scales = {
            "mass": epsilon,
            "window": epsilon ** (2 / 3),
            "discarded": math.pi * epsilon ** (1 / 3) - epsilon,
        }
        for series, value in scales.items():
            coordinates = self.coordinates(opening, series)
            self.assert_point(coordinates[128], -4, math.log10(value), (-6, -1), (-6, .5))

    def test_written_figures_match_rendered_output(self):
        with tempfile.TemporaryDirectory() as directory:
            figures.write_figures(directory)
            for name, render in figures.FIGURES.items():
                self.assertEqual((Path(directory) / name).read_text(encoding="utf-8"), render())


if __name__ == "__main__":
    unittest.main()
