CFLAGS := -Wall -I../lib
LDFLAGS := -L../lib -llinkedlist

SRC := $(wildcard *.c)
OBJ := $(SRC:.c=.o)

BIN := addressBook

.PHONY: all clean install uninstall

all: $(BIN)

$(BIN): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) $(LDFLAGS) -o $(BIN)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(BIN) $(OBJ)

install: $(BIN)
	install -m 755 $(BIN) /usr/local/bin/

uninstall:
	$(RM) /usr/local/bin/$(BIN)
