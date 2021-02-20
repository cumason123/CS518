open Int64
open Float
open QCheck
open Printf
open OUnit2

let print_list x = match (List.iter (printf "%d ") x) with
  | _ -> printf "\n"
;;
let generator = (Gen.list_size (Gen.int_range 5 10) (Gen.int_range 0 100));;

printf "Generate1:\n";;
print_list (Gen.generate1 generator);;
printf "\n";;

printf "Generate:\n";;
List.iter (print_list) (Gen.generate ~n:3 generator);;
printf "\n";;

let testable_generator = make generator;;

let is_even i =
  i mod 2 = 0

let rec rec_is_even = function
  | [] -> false
  | a :: b -> (is_even a) || (rec_is_even b)

let test =
  Test.make ~name:"Tester" ~count:100 testable_generator rec_is_even
;;

let main_test = QCheck_runner.run_tests[
  test;
]

(* let runner = QCheck_runner.run_test_tt_main[
  main_test;
] *)
(* Test.run_exn test;; *)