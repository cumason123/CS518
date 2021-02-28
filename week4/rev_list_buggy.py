## To run this script, issue the command:
##       >>> execfile ('rev_list_buggy.py')              IN PYTHON 2
##       >>> exec (open('rev_list_buggy.py').read())     IN PYTHON 3

########################################
### Buggy code to reverse a list
### Try to debug it! (fixes needed are explained below)
########################################
import typing
def rev_list_buggy1(L: typing.List):
    """
    input: L, a list
    Modifies L such that its elements are in reverse order
    returns: nothing
    """
    # Function has out of index bug
    for i in range(len(L)):
        j = len(L) - i
        temp = L[i]
        L[i] = L[j]
        L[j] = L[i]

def rev_list_buggy2(L: typing.List):
    """
    input: L, a list
    Modifies L such that its elements are in reverse order
    returns: nothing
    """
    # Function flips array twice effectively
    for i in range(len(L)):
        j = len(L) - i -1
        temp = L[i]
        L[i] = L[j]
        L[j] = L[i]

def rev_list(L: typing.List):
    """
    input: L, a list
    Modifies L such that its elements are in reverse order
    returns: nothing
    """
    if not isinstance(L, list):
        raise TypeError(f"Expected list but found {type(L)}")

    for i in range(int(len(L) / 2)):
        j = len(L) - i - 1
        temp = L[i]
        L[i] = L[j]
        L[j] = temp
