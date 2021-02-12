open OUnit2
open Prod
let prod_tests = "This test will break" >::: [
  "prod [1 :: 4] == 4"  >:: (fun _ -> assert_equal 4 (Prod.prod [1;4]));
]
let _ = run_test_tt_main prod_tests;;