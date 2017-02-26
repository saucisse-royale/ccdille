CC ?= cc
CFLAGS = -ansi -O2
DBGFLAGS = -W -Wall -Werror -Wextra -Wno-unused-parameter -pedantic -pedantic-errors -g -ansi
PREFIX = /usr/local

ç: ç.c
	$(CC) $(CFLAGS) -o ç ç.c
ç.c: ç.c.fr
	./ç traduire ç.c.fr

all: ç
debug: ç.c
	$(CC) $(DBGFLAGS) -o ç ç.c
clean:
	rm -rf ç
install: all
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m 0755 ç $(DESTDIR)$(PREFIX)/bin

.PHONY: clean all debug install
