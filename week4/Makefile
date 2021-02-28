run:
	make test
test:
	ocamlbuild -pkgs qcheck odd_divisor_test.byte
	./odd_divisor_test.byte
	printf '#use "topfind";;\n#require "qcheck";;\n#use "odd_divisor_test.ml";;\n' | ocaml