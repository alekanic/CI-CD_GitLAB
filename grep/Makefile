FLAG = -Wall -Wextra -Werror

all: s21_grep

s21_grep: clean
	gcc $(FLAG) s21_grep.c -o s21_grep

make_style:

	clang-format -i  *.c *.h

style:

	clang-format -n *.c *.h
	
tests:

	sh test_func_grep.sh

my_tests:

	sh s21_grep_test.sh

clean:

	rm -rf s21_grep
	rm -rf *.o
	rm -rf *.out

rebuild: clean s21_grep