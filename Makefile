compile:
	gcc -ftest-coverage -fprofile-arcs -O0 -o test test.c lib.c

test: compile
	./test

codecov: test
	gcov -abcfu lib.c

cleanup:
	rm *.gcno *.gcda *.gcov test

genreport: codecov
