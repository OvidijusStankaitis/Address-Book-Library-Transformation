LIBDIR := lib
SRCDIR := src

all:
	@$(MAKE) -C $(LIBDIR)
	@$(MAKE) -C $(SRCDIR)

clean:
	@$(MAKE) -C $(LIBDIR) clean
	@$(MAKE) -C $(SRCDIR) clean

.PHONY: all clean
