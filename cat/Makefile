FLAG = -Wall -Wextra -Werror

all: s21_cat

s21_cat: clean
	gcc $(FLAG) s21_cat.c -o s21_cat

make_style:

	clang-format -i  *.c *.h

style:

	clang-format -n *.c *.h

tests:

	sh test_func_cat.sh

my_tests:

	sh s21_cat_test.sh

clean:

	rm -rf s21_cat
	rm -rf *.o
	rm -rf *.out

rebuild: clean s21_cat