CFLAGS := -Wall -I../lib
LDFLAGS := -L../lib -Wl,-rpath,'$$ORIGIN/../lib' -llinkedlist

SRC := $(wildcard *.c)
OBJ := $(SRC:.c=.o)

OUTPUT:= addressBook

all: $(OUTPUT)

$(OUTPUT): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) $(LDFLAGS) -o $(OUTPUT)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OUTPUT) $(OBJ)