// Complete the contract of the Dafny program below. Only a pre-condtion is
// already inserted. Your task is to include appropriate post-condition for the
// program and invariants for the loop. 

method Min(arr : array?< int >) returns (min : int )
requires arr != null && arr.Length > 0;
ensures forall k :: (0 <= k < arr.Length) ==> (arr[k] >= min);
// ensures ... ;
{
  var i := 1;
  min := arr[0];
  while (i < arr.Length)
    decreases arr.Length - i;
    invariant i < arr.Length + 1 ;
    invariant i > 0 ==> min <= arr[i-1] ;
    invariant arr != null && arr.Length > 0;
    invariant forall k :: 0 <= k < i ==> min <= arr[k];
  {
    if (arr[i] < min)
       {min := arr[i];}
       i := i +1;
  }
}
