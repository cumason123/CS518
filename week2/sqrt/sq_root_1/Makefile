run:
	ocamlbuild sq_root_1.byte
	ocamlbuild -pkgs oUnit sq_root_1_test.byte
	./sq_root_1_test.byte

clean:
	ocamlbuild -clean
	rm -rf _build
