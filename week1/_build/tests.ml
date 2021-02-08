open OUnit2
open Hw1
let tetra1_tests = "test suite for sum" >::: [
  "tetra1 0 == 0"  >:: (fun _ -> assert_equal 0 (Hw1.tetra1 0));
  "tetra1 1 == 1"    >:: (fun _ -> assert_equal 1 (Hw1.tetra1 1));
  "tetra1 2 == 1" >:: (fun _ -> assert_equal 1 (Hw1.tetra1 2));
  "tetra1 3 == 2" >:: (fun _ -> assert_equal 2 (Hw1.tetra1 3));
  "tetra1 4 == 4" >:: (fun _ -> assert_equal 4 (Hw1.tetra1 4));
  "tetra1 5 == 8" >:: (fun _ -> assert_equal 8 (Hw1.tetra1 5));
  "tetra1 6 == 15" >:: (fun _ -> assert_equal 15 (Hw1.tetra1 6));
]
let _ = run_test_tt_main tetra1_tests;;

let sum_top_4_tests = "test suite for sum_top_4" >::: [
  "sum_top_4_tests [0;1;1;5;0;3] == [7;0;1;1;5;0;3]"  >:: (fun _ -> assert_equal [7;0;1;1;5;0;3] (Hw1.sum_top_4 [0;1;1;5;0;3]));
]
let _ = run_test_tt_main sum_top_4_tests;;

let ascending_tests = "test suite for ascending" >::: [
  "ascending 5" >:: (fun _ -> assert_equal [0;1;2;3;4;5] (Hw1.ascending 5));
  "ascending 7" >:: (fun _ -> assert_equal [0;1;2;3;4;5;6;7] (Hw1.ascending 7));
]
let _ = run_test_tt_main ascending_tests;;

let tetra_helper_tests = "test suite for tetra_helper in tetra2" >::: [
  "tetra_helper ascending 4) [1;0] == [4;2;1;1;0]" >:: (fun _ -> assert_equal [4;2;1;1;0] (Hw1.tetra_helper (ascending 4) [1;0]))
]
let _ = run_test_tt_main tetra_helper_tests;;

let tetra2_tests = "test suite for sum" >::: [
  "tetra1 0 == 0"  >:: (fun _ -> assert_equal 0 (Hw1.tetra2 0));
  "tetra1 1 == 1"    >:: (fun _ -> assert_equal 1 (Hw1.tetra2 1));
  "tetra1 2 == 1" >:: (fun _ -> assert_equal 1 (Hw1.tetra2 2));
  "tetra1 3 == 2" >:: (fun _ -> assert_equal 2 (Hw1.tetra2 3));
  "tetra1 4 == 4" >:: (fun _ -> assert_equal 4 (Hw1.tetra2 4));
  "tetra1 5 == 8" >:: (fun _ -> assert_equal 8 (Hw1.tetra2 5));
  "tetra1 6 == 15" >:: (fun _ -> assert_equal 15 (Hw1.tetra2 6));
]
let _ = run_test_tt_main tetra2_tests;;

let sum_top_k_tests = "test suite for sum_top_k_tests" >::: [
  "sum_top_k 3 [10;2;4;1;0;6] == 16" >:: (fun _ -> assert_equal 16 (Hw1.sum_top_k 3 [10;2;4;1;0;6]));
  "sum_top_k 2 [1;0] == 1" >:: (fun _ -> assert_equal 1 (Hw1.sum_top_k 2 [1;0]));
  "sum_top_k 3 [1;1;0] == 2" >:: (fun _ -> assert_equal 2 (Hw1.sum_top_k 3 [1;1;0]));

]
let _ = run_test_tt_main sum_top_k_tests;;

let fib_k_step_tests = "test suite for fib_k_step_tests" >::: [
  "fib_k_step 0 2 == 0" >:: (fun _ -> assert_equal 0 (Hw1.fib_k_step 0 2));
  "fib_k_step 1 2 == 1" >:: (fun _ -> assert_equal 1 (Hw1.fib_k_step 1 2));
  "fib_k_step 2 2 == 1" >:: (fun _ -> assert_equal 1 (Hw1.fib_k_step 2 2));
  "fib_k_step 3 2 == 2" >:: (fun _ -> assert_equal 2 (Hw1.fib_k_step 3 2));
  "fib_k_step 4 2 == 3" >:: (fun _ -> assert_equal 3 (Hw1.fib_k_step 4 2));
  "fib_k_step 5 2 == 5" >:: (fun _ -> assert_equal 5 (Hw1.fib_k_step 5 2));

  "fib_k_step 0 2 == 0" >:: (fun _ -> assert_equal 0 (Hw1.fib_k_step 0 4));
  "fib_k_step 1 2 == 1" >:: (fun _ -> assert_equal 1 (Hw1.fib_k_step 1 4));
  "fib_k_step 2 2 == 1" >:: (fun _ -> assert_equal 1 (Hw1.fib_k_step 2 4));
  "fib_k_step 3 2 == 2" >:: (fun _ -> assert_equal 2 (Hw1.fib_k_step 3 4));
  "fib_k_step 4 2 == 4" >:: (fun _ -> assert_equal 4 (Hw1.fib_k_step 4 4));
  "fib_k_step 5 2 == 8" >:: (fun _ -> assert_equal 8 (Hw1.fib_k_step 5 4));
  "fib_k_step 5 2 == 15" >:: (fun _ -> assert_equal 15 (Hw1.fib_k_step 6 4));

  "fib_k_step 0 2 == 0" >:: (fun _ -> assert_equal 0 (Hw1.fib_k_step 0 5));
  "fib_k_step 1 2 == 1" >:: (fun _ -> assert_equal 1 (Hw1.fib_k_step 1 5));
  "fib_k_step 2 2 == 1" >:: (fun _ -> assert_equal 1 (Hw1.fib_k_step 2 5));
  "fib_k_step 3 2 == 2" >:: (fun _ -> assert_equal 2 (Hw1.fib_k_step 3 5));
  "fib_k_step 4 2 == 4" >:: (fun _ -> assert_equal 4 (Hw1.fib_k_step 4 5));
  "fib_k_step 5 2 == 8" >:: (fun _ -> assert_equal 8 (Hw1.fib_k_step 5 5));
  "fib_k_step 5 2 == 16" >:: (fun _ -> assert_equal 16 (Hw1.fib_k_step 6 5));
  "fib_k_step 5 2 == 17" >:: (fun _ -> assert_equal 31 (Hw1.fib_k_step 7 5));
]   
let _ = run_test_tt_main fib_k_step_tests;; 

(* TODO: Write tests for bin tree *)
(* let tree: int Hw1.binTree = Hw1.binTree (5, (Hw1.binTree 6, Leaf), (Hw1.binTree, 20, Leaf))
let f = function
  | x -> x + 1
let map_tests = "simple test suite for map" >::: [
  "map (+1 function) tree works" >:: (fun _ -> assert_equal (Hw1.binTree (6, (Hw1.binTree 7, Leaf), (Hw1.binTree, 21, Leaf))) (Hw1.map f tree));
]
let _ = run_test_tt_main map_tests;;  *)
