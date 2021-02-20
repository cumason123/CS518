open Int64
open Float
open QCheck
open Printf

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