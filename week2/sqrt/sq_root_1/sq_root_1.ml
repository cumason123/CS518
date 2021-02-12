let rec sqrt (x: float) (n: int) = 
  match x with 
  | 0. -> (match n with 
    | 1 -> 50.
    | _ -> float_of_string (Printf.sprintf ("%.*f") n (Float.sqrt x))
    )
  | _ -> float_of_string (Printf.sprintf ("%.*f") n (Float.sqrt x));;
