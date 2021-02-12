open OUnit2
open Concat
let concat_test = "This contains a bug" >::: [
  "concat ['Hello';' ';'World!'] == 'Hello World!'"  >:: (fun _ -> assert_equal "Hello World!" (Concat.concat ["Hello";" ";"World!"]));
  "concat [''] == ''"  >:: (fun _ -> assert_equal "" (Concat.concat []));

]
let _ = run_test_tt_main concat_test;;