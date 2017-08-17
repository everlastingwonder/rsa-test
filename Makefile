rsa : bin/rsa.o bin/keygen.o bin/encrypt.o
	gcc -o rsa rsa.o keygen.o encrypt.o

bin/rsa.o : rsa.c include/chash.h
	gcc -c rsa.c
	mv rsa.o bin/

bin/keygen.o : keygen.c
	gcc -c keygen.c
	mv keygen.o bin/

bin/encrypt.o : encrypt.c
	gcc -c encrypt.c
	mv encrypt.o bin/
