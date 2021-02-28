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
    if not isinstance(L, list):
        raise TypeError(f"Expected list but found {type(L)}")
    for i in range(int(len(L) / 2)):
        j = len(L) - i - 1
        temp = L[i]
        L[i] = L[j]
        L[j] = temp

def rev_list_buggy2(L):
    """
    input: L, a list
    Modifies L such that its elements are in reverse order
    returns: nothing
    """
    for i in range(len(L)):
        j = len(L) - i -1
        temp = L[i]
        L[i] = L[j]
        L[j] = L[i]
        
L = [1,2,3,4]
# rev_list_buggy1 (L)
# rev_list_buggy2 (L)
print(L)


