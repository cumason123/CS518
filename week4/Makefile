run:
	make test
test:
	ocamlbuild -pkgs qcheck qchecks.byte
	./qchecks.byte
	printf '#use "topfind";;\n#require "qcheck";;\n#use "qchecks.ml";;\n' | ocaml