run:
	ocamlbuild sq_root_3.byte
	ocamlbuild -pkgs oUnit sq_root_3_test.byte
	./sq_root_3_test.byte

clean:
	ocamlbuild -clean
	rm -rf _build
