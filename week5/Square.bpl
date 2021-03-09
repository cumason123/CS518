procedure Sqr (n: int) returns (r: int)
  ensures r >= 0;
{
  var i, x : int;
  i := 0;
  r := 0;
  x := 1;
  while (i < n)
    invariant i >= 0;
    invariant r >= 0;
    invariant x > 0;
    // Mod operator does not work invariant (x % 2 == 1)
  {
    i := i + 1;
    r := r + x;
    x := x + 2;
  }
}
