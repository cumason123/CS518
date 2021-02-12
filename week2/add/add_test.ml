open OUnit2
open Add
let add_test = "This contains a bug" >::: [
  "add 1 4 == 5"  >:: (fun _ -> assert_equal 5 (Add.add 1 4));
  "add 7 0 == 7"  >:: (fun _ -> assert_equal 7 (Add.add 7 0));

]
let _ = run_test_tt_main add_test;;