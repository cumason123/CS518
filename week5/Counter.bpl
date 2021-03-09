
var counter : int ;
procedure incrementCounter ()
  modifies counter ;
{
  counter := counter + 1;
}
// unsure whether no contracts is a stronger contract with halving
// number of inputs in requires via (ensures counter > 0;  requires counter >= 0;)