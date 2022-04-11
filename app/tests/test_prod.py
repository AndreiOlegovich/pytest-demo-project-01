# test_prod.py

import pytest
from prod import prod

def test_prod():
    res = prod(3, 4)
    assert res == 12

def test_arguments():
    try:
        # 1. Use invalid argument on purpose and see that exception is triggered
        # "" is a string and should not be accepted
        # use some invalid value e.g. res = prod("x", 2) to trigger exception
        res = prod(3, "test")

        # 2. Try also valid value e.g. res = prod(5, 7) to see that test fails
        # res = prod(5, 7)
    except TypeError as err:
        # if TypeError is caught
        pass
    else:
        print("test_prod.py: Invalid argument is not caught")
        pytest.fail()
        # assert False
