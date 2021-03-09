procedure SqRt (x: int) returns (r: int)
  // What I would like to add:
  // ensures (r+1) * (r+1) > x;

  // asserting my input can only be x := 4 for testing purposes
  requires x == 4;

  // Both of these Fail and I'm unsure why
  // ensures x > r || x < r;
  // ensures r == x;

  // BUT if combined they will pass because this must be a true statement 
  // if r and x are integers
  // ensures r == x || x > r || x < r;

  // Furthermore removing the while loop allows me to make this assertion.
  // Therefore I clearly am misunderstanding something with boogie
  // contracts
{
 var s: int ;
 r := 0;
 s := 1;
  while (s <= x)
   invariant r >= 0;
   invariant s > 0;
 {
   r := r + 1 ;
   s := (r+1) * (r+1) ;
 }

  // r equals 2 when x is 4 if I'm not mistaken
  // ergo: (2) + 2 := 4
  r := r +2;
}