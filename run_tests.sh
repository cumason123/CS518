#!bin/bash
eval $(opam env)
cd week1 && make test && cd ..
