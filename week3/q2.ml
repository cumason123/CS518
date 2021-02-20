open Int64
open Float
open QCheck

let exercise2 x = to_int (floor x);;

let test = 
  Test.make ~count:1000 ~name:"Bugged truncate function"
  (float)
  (fun x -> exercise2 x = truncate x) ;;
Test.check_exn test;;