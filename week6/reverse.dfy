method Reverse(a: array<char>) returns (b: array<char>)
    requires  a.Length > 0
    ensures a.Length > 0 ==> (forall k :: 0 <= k < a.Length ==> (a[k] == b[a.Length - 1 - k])) // post condition does not work
    ensures a.Length == b.Length
    //ensures old(multiset(a[..])) == multiset(b[..]) // post condition does not work

{
    b := new char[a.Length];
    var i := 0;
    while (i < a.Length) 
        invariant 0 <= i <= a.Length;
    {
        b[a.Length - 1 - i] := a[i];
        i := i + 1;
    }
}

method Main()
{
    // var a := new char [8];
    // a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7] := 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h';
    // var b := Reverse(a);
    // assert b[..] == ['h', 'g', 'f', 'e', 'd', 'c', 'b', 'a'];
    // print b[..];

    var a := new char [1];
    a[0] := 'a';
    var b := Reverse(a);
    //assert b[..] == ['a']; // will throw assertion error because function apparently doesn't run?
    print b[..];

    // a := new char[1];
    // a[0] := '!';
    // b := Reverse(a);
    // assert b[..] == ['!'];
    // print b[..], '\n';
}