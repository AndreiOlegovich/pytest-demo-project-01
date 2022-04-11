# test_quadratic.py

import pytest
import unittest
from quadratic import quadratic_solve

class TestQuadratic:
    def test_raises_type_error(self):
        with pytest.raises(TypeError) as exc_info:
            quadratic_solve(1, "", 2)
        print(exc_info)


