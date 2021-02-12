
open OUnit2
open Sq_root_2

let sqrt_test = "Sq_root_2 contains a bug" >::: [
  "sqrt 10. 5 = 3.16228"  >:: (fun _ -> assert_equal 3.16228 (Sq_root_2.sqrt 10. 5));
  "sqrt 10. 9 = 3.16227766"  >:: (fun _ -> assert_equal 3.16227766 (Sq_root_2.sqrt 10. 9));
  "sqrt 9. 3 = 3."  >:: (fun _ -> assert_equal 3. (Sq_root_2.sqrt 9. 3));

  "should've broke: sqrt 1. 1 = 1."  >:: (fun _ -> assert_equal 1. (Sq_root_2.sqrt 1. 1));
]
let _ = run_test_tt_main sqrt_test;;