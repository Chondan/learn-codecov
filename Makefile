compile:
	gcc -ftest-coverage -fprofile-arcs -O0 -o test test.c lib.c

codecov:
	gcov -abcfu lib.c
