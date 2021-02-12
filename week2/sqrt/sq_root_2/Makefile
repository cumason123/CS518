run:
	ocamlbuild sq_root_2.byte
	ocamlbuild -pkgs oUnit sq_root_2_test.byte
	./sq_root_2_test.byte

clean:
	ocamlbuild -clean
	rm -rf _build
