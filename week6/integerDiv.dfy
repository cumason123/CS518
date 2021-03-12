// dnw?
method integerDiv(n: nat, d: nat) returns (r: nat, q: nat)
    requires n >= 0 && d > 0
    // ensures n == (q * d + r) // this postcondition doesn't work?
    ensures 0 <= r < d
{
    q := 0;
    r := n;
    while (r >= d) 
        invariant 0 <= r <= n; 

    {   
        q := q + 1;
        r := r - d;
    }
}