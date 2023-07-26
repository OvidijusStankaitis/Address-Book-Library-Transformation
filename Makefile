LIBDIR := lib
SRCDIR := src

all: build-lib build-src

build-lib:
	@$(MAKE) -C $(LIBDIR)

build-src:
	@$(MAKE) -C $(SRCDIR)

clean: clean-lib clean-src

clean-lib:
	@$(MAKE) -C $(LIBDIR) clean

clean-src:
	@$(MAKE) -C $(SRCDIR) clean

install: install-lib install-src

install-lib:
	$(MAKE) -C $(LIBDIR) install

install-src:
	$(MAKE) -C $(SRCDIR) install

uninstall: uninstall-lib uninstall-src

uninstall-lib:
	$(MAKE) -C $(LIBDIR) uninstall

uninstall-src:
	$(MAKE) -C $(SRCDIR) uninstall

.PHONY: all build-lib build-src clean clean-lib clean-src install install-lib install-src uninstall uninstall-lib uninstall-src
