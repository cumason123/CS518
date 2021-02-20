open QCheck
open List
let test = 
  Test.make ~count:1000 ~name:"signed ints list rev is involutive"
  (list small_int)
    (* small_int gives signed integers *)
  (fun lst -> List.rev (List.rev lst) = lst) ;;
Test.check_exn test;;