
procedure catching (x: int) returns (y: int)
   ensures y >= x;
{
   y := 0 ;
   while ( y < x )
      invariant y <= x || x < 0;
   {
     y := y + 1;
   }
}