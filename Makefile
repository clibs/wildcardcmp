
CC = gcc
CFLAGS = -std=c99 -Wall -Wextra

SRC = wildcardcmp.c
OBJS = $(SRC:.c=.o)

test: test.o $(OBJS)
	$(CC) $^ -o $@
	./$@

%.o: %.c
	$(CC) $< $(CFLAGS) -c -o $@

clean:
	rm -f *.o *.gc* test

.PHONY: test clean
