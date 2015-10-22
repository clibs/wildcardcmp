
CC = gcc
CFLAGS += -std=c99 -Wall -Wextra

SRC = wildcardcmp.c
OBJS = $(SRC:.c=.o)

test: test.o $(OBJS)
	$(CC) $^ -o $@
	./$@

coverage.info: wildcardcmp.c.gcov
	lcov --capture --directory . --output-file $@

coverage: coverage.info
	genhtml $< --output-directory $@

wildcardcmp.c.gcov: wildcardcmp.c test.c
	$(CC) $^ $(CFLAGS) --coverage -o test
	./test
	gcov -abcfu $<

%.o: %.c
	$(CC) $< $(CFLAGS) -c -o $@

clean:
	rm -rf *.o *.gc* test coverage

.PHONY: test clean
