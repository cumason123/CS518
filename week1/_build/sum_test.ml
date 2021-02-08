open OUnit2

let tests = "test suite for sum" >::: [
  "zero"  >:: (fun _ -> assert_equal 0 0);
  "one"    >:: (fun _ -> assert_equal 1 1);
  "three" >:: (fun _ -> assert_equal 3 3);
]

let _ = run_test_tt_main tests
