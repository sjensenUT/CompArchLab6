CC=gcc
CFLAGS = -Wall -Wextra -g -std=c99

simulate.exe : lc3bsim6.c
	$(CC) $(CFLAGS) $^ -o $@

.PHONY: clean
clean : 
	rm -f simulate.exe

.PHONY: test
test : simulate.exe
	./simulate.exe
