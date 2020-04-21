all: output.txt

output.txt: intermediate.txt
	cp intermediate.txt output.txt
	echo "cool" >> output.txt

intermediate.txt: input.txt
	cp input.txt intermediate.txt
	echo "is" >> intermediate.txt

pic: pics/out.png

pics/out.png: Makefile
	make -Bnd | ../../makefile2graph/make2graph | dot -Tpng -o pics/out.png

clean: 
	rm -f intermediate.txt output.txt

