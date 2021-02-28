import typing
def primes_list(n: typing.List[int]):
   
    ## input: n an integer > 1
    ## returns: list of all the primes up to and including n
    primes: typing.List[int] = []

    if not isinstance(n, int):
        raise TypeError(f"primes_list expected positive int but found {type(n)}")

    if (n < 0):
        raise ValueError(f"primes_list received negative val {n}")

    if (n == 0):
        return primes
    
    for i in range(1,n + 1):
        isPrime = True
        for prime in primes:
            if not prime == 1 and i%prime == 0:
                isPrime=False
                break
        if isPrime:
            primes.append(i)
    return primes
