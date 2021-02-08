
let rec tetra1 v: int = 
  match v with
  | 0 -> 0
  | 1 -> 1
  | 2 -> 1
  | 3 -> 2
  | _ -> tetra1 (v - 4) + tetra1 (v - 3) + tetra1 (v - 2) + tetra1 (v - 1)
;;

(* 4^n time complexity *)
let rec sum_top_4 arr = 
  match arr with
  | [] -> 0 :: arr
  | a :: [] -> a :: arr
  | a :: b :: [] -> a + b :: arr
  | a :: b :: c :: [] -> a + b + c :: arr
  | a :: b :: c :: d :: tl -> a + b + c + d :: arr
;;

let rec ascending v: int list = 
  match v with 
  | 0 -> 0 :: []
  | _ -> (ascending (v - 1)) @ [v]
;;

let rec tetra_helper indexArr history = 
  match indexArr with
  | [] -> history
  | 0 :: b ->  tetra_helper b ([0])
  | 1 :: b ->  tetra_helper b ([1;0])
  | a :: b -> tetra_helper b (sum_top_4 history)
;;

let rec tetra2 v: int =
  match (tetra_helper (ascending v) []) with 
    | [] -> 0
    | a :: b -> a
;;

let rec sum_top_k k arr = 
  match k with
  | 0 -> 0
  | _ -> (match arr with
    | [] -> 0
    | a :: b -> a + (sum_top_k (k - 1) b))
;;

let rec fib_k_append n k arr =
  match n with
  | 0 -> arr
  | 1 -> arr
  | _ ->  (fib_k_append (n-1) k ((sum_top_k k arr) :: arr))
  
;;

let rec fib_k_step n k = 
  match n with
  | 0 -> 0
  | 1 -> 1
  | _ -> (match (fib_k_append n k [1;0]) with
    | [] -> 0
    | a :: b -> a)
;;

type 'a binTree =
  | Leaf
  | Node of 'a * ('a binTree) * ('a binTree)

let rec map (f: 'a -> 'b) (node: 'a binTree) : 'b binTree = 
  match node with
  | Leaf -> Leaf
  | Node ((data: 'a), (left: 'a binTree), (right: 'a binTree)) -> Node ((f data), (map f left), (map f right))