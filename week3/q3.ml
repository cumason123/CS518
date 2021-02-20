open Int64
open Float
open QCheck

Gen.generate1 ~n:10 Gen.int_range 0 100;;
