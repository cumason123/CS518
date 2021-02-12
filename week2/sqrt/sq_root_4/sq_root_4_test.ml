
open OUnit2
open Sq_root_4

let sqrt_test = "These should pass" >::: [
  "should've broke sqrt 9. 3 = 3."  >:: (fun _ -> assert_equal 3. (Sq_root_4.sqrt 9. 3));

]
let _ = run_test_tt_main sqrt_test;;