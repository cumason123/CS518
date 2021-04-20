var counter : int ;
procedure incrementCounter ()
  modifies counter ;
{
  counter := counter + 1;
}
// was unsure which is stronger, (ensure counter > 0; require counter >= 0;) or
// no contract. 