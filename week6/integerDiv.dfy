// dnw?
method integerDiv(n: nat, d: nat) returns (r: nat, q: nat)
    requires n >= 0 && d > 0
    ensures 0 <= r < d && n == (q * d + r)
{
    q := 0;
    r := n;
    while (r >= d) 
        decreases r
        invariant q * d + r == n; 

    {   
        q := q + 1;
        r := r - d;
    }
}