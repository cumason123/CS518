let rec working_prod = function
  | [] -> 1
  | a :: b -> a * (working_prod b) 

let rec prod = function
  | [] -> 0
  | a :: b -> a * (prod b) 