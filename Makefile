CC = GCC
CFLAGS = -Wall -Wextra -g $(shell pkg-config --cflags sdl3)
LDFLAGS = $(shell pkg-config --libs sdl3)

SRC = $(wildcard src/*.c)

chip8: $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o chip8 $(LDFLAGS)

clean:
	rm -f chip8

	.PHONY: clean