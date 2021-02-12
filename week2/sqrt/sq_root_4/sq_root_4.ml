let rec sqrt (x: float) (n: int) = 
  match x with 
  | 0. -> float_of_string (Printf.sprintf ("%.*f") n (Float.sqrt x))
  | _ -> (match n with 
    | 0 -> float_of_string (Printf.sprintf ("%.*f") n (Float.sqrt x))
    | 1 -> float_of_string (Printf.sprintf ("%.*f") n (Float.sqrt x))
    | _ -> -12.)
