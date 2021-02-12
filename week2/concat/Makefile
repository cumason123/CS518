run:
	ocamlbuild concat.byte
	./concat.byte

test:
	make
	ocamlbuild -pkgs oUnit concat_test.byte
	./concat_test.byte
	make clean

clean:
	ocamlbuild -clean
	rm -rf _build
