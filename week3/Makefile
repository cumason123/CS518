run:
	make test q=1	
	make test q=2
test:
	ocamlbuild -pkgs qcheck q$(q).byte
	./q$(q).byte
	printf '#use "topfind";;\n#require "qcheck";;\n#use "q%s.ml";;\n' $(q) | ocaml

test_list:
	ocamlbuild -pkgs ounit2,qcheck test_list.byte
	./test_list.byte
