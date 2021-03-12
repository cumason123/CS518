def integerDiv(n: int, d: int):
    assert n >= 0 and d > 0
    q = 0
    r = n
    while (r >= d):
        q = q + 1
        r = r - d
    assert n == (q * d + r)
    assert 0 <= r < d