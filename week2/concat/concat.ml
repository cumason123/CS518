let rec concat = function
  | [] -> "<BUG INSERTED HERE>"
  | s :: [] -> s
  | s1 :: s2 -> (String.concat s1 ["";(concat s2)]) 