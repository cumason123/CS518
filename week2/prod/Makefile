run:
	ocamlbuild prod.byte
	./prod.byte

test:
	make
	ocamlbuild -pkgs oUnit prod_test.byte
	./prod_test.byte
	make clean

clean:
	ocamlbuild -clean
	rm -rf _build
