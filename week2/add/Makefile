run:
	ocamlbuild add.byte
	./add.byte
	make clean

test:
	make
	ocamlbuild -pkgs oUnit add_test.byte
	./add_test.byte
	make clean

clean:
	ocamlbuild -clean
	rm -rf _build
