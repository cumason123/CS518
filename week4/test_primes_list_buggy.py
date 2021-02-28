import pytest # type: ignore
from primes_list_buggy import primes_list

@pytest.mark.parametrize(
    "input,expected", 
    [
        (5, [1,2,3,5]),
        (30, [1,2,3,5,7,11,13,17,19,23,29]),
        (0, []),
        (-5, ValueError),
        ('foo', TypeError)
    ]
)
def test_rev_list(input,expected):
    # Pytest overloads asserts to test values in list
    if (not isinstance(input, int)) or (input < 0):
        with pytest.raises(expected):
            primes_list(input)
    else:
        result = primes_list(input)
        assert result == expected, f"Expected {expected} but found {result}"
