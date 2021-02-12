
open OUnit2
open Sq_root_1

let sqrt_test = "Sq_root_1 contains a bug" >::: [
  "sqrt 10. 5 = 3.16228"  >:: (fun _ -> assert_equal 3.16228 (Sq_root_1.sqrt 10. 5));
  "sqrt 10. 9 = 3.16227766"  >:: (fun _ -> assert_equal 3.16227766 (Sq_root_1.sqrt 10. 9));
  "sqrt 9. 3 = 3."  >:: (fun _ -> assert_equal 3. (Sq_root_1.sqrt 9. 3));

  "should've broke: sqrt 0. 1 = 0."  >:: (fun _ -> assert_equal 0. (Sq_root_1.sqrt 0. 1));
]
let _ = run_test_tt_main sqrt_test;;