CFLAGS := -Wall -fPIC -I../lib
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
	$(RM) $(LIBRARY_NAME) $(LIBRARY_NAME).$(VERSION) $(OBJ)

install: $(LIBRARY_NAME)
	sudo cp $(LIBRARY_NAME).$(VERSION) /usr/local/lib/
	sudo ln -sf /usr/local/lib/$(LIBRARY_NAME).$(VERSION) /usr/local/lib/$(LIBRARY_NAME)
	sudo ldconfig

uninstall:
	sudo rm -f /usr/local/lib/$(LIBRARY_NAME).$(VERSION)
	sudo rm -f /usr/local/lib/$(LIBRARY_NAME)

.PHONY: all clean install uninstall
