import pytest
from rev_list_buggy import rev_list_buggy1, rev_list_buggy2

@pytest.mark.parametrize(
    "input,expected", 
    [
        ([1,2], [2,1]), 
        ([1,2,3,4,5,6,7], [7,6,5,4,3,2,1]), 
        ([], []),
        (-5, TypeError)
    ]
)
def test_rev_list_buggy1(input,expected):
    # Pytest overloads asserts to test values in list
    if not isinstance(expected, list):
        with pytest.raises(expected):
            rev_list_buggy1(input)
    else:
        rev_list_buggy1(input)
        assert input == expected, f"Expected {expected} but found {input}"

# def test_rev_list_buggy2():
