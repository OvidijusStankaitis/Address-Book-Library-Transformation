CFLAGS := -Wall -fPIC -I../lib
LIBRARY_NAME := liblinkedlist.so
HEADER_NAME := linkedList.h
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
	$(RM) $(LIBRARY_NAME) $(LIBRARY_NAME).$(VERSION) $(OBJ)

install: $(LIBRARY_NAME)
	install -m 755 $(LIBRARY_NAME).$(VERSION) /usr/local/lib/
	ln -sf /usr/local/lib/$(LIBRARY_NAME).$(VERSION) /usr/local/lib/$(LIBRARY_NAME)
	install -m 644 $(HEADER_NAME) /usr/local/include/

uninstall:
	$(RM) /usr/local/lib/$(LIBRARY_NAME).$(VERSION)
	$(RM) /usr/local/lib/$(LIBRARY_NAME)
	$(RM) /usr/local/include/$(HEADER_NAME)

.PHONY: all clean install uninstall
