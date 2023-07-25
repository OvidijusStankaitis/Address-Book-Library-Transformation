CFLAGS := -Wall -fPIC

LIBRARY_NAME := liblinkedlist.so
VERSION := 1.0


SRC := $(wildcard *.c)
OBJ := $(SRC:.c=.o)

all: $(LIBRARY_NAME)

$(LIBRARY_NAME): $(OBJ)
	$(CC) -shared -Wl,-soname,$(LIBRARY_NAME).$(VERSION) -o $(LIBRARY_NAME).$(VERSION) $(OBJ)
	ln -sf $(LIBRARY_NAME).$(VERSION) $(LIBRARY_NAME)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(LIBRARY_NAME) $(LIBRARY_NAME).$(VERSION) $(OBJ)

