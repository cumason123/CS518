// The following Dafny program computes the k-th positive even number, where the
// first even number is defined to be 0, the second is defined to be 2, the third
// is 4 and so on.

method kthEven(k : int ) returns (e : int)
requires k > 0 ;
ensures e / 2 == k;
{
  e := 0;
  var i := 1;

  while (i < k)
  invariant e / 2 == i ;
  invariant 0 < i <= k
  decreases k - i ;
  {
    e := e + 2;
    i := i + 1;
  }
}