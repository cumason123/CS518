run:
	ocamlbuild sq_root_4.byte
	ocamlbuild -pkgs oUnit sq_root_4_test.byte
	./sq_root_4_test.byte

clean:
	ocamlbuild -clean
	rm -rf _build
