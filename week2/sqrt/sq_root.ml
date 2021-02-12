
open OUnit2

let rec sqrt (x: float) (n: int) = 
  float_of_string (Printf.sprintf ("%.*f") n (Float.sqrt x));;

let sqrt_test = "These should pass" >::: [
  "sqrt 10. 5 = 3.16228"  >:: (fun _ -> assert_equal 3.16228 (sqrt 10. 5));
  "sqrt 10. 9 = 3.16227766"  >:: (fun _ -> assert_equal 3.16227766 (sqrt 10. 9));
  "sqrt 9. 3 = 3."  >:: (fun _ -> assert_equal 3. (sqrt 9. 3));

  "sqrt 0. 1 = 0."  >:: (fun _ -> assert_equal 0. (sqrt 0. 1));
  "sqrt 1. 1 = 1."  >:: (fun _ -> assert_equal 1. (sqrt 1. 1));
  "sqrt 0. 2 = 0."  >:: (fun _ -> assert_equal 0. (sqrt 0. 2));
]
let _ = run_test_tt_main sqrt_test;;