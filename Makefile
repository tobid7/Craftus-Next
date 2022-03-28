   
DATESTRING	:=	$(shell date +%Y)$(shell date +%m)$(shell date +%d)

MAKEFILES := $(shell find . -mindepth 2 -name Makefile)

#---------------------------------------------------------------------------------
all: craftus
#---------------------------------------------------------------------------------
	@rm -fr bin
	@mkdir -p bin
	@find . -name "*.3dsx" ! -path "./bin/*" -exec cp -fv {} bin \;
	@find . -name "*.cia" ! -path "./bin/*" -exec cp -fv {} bin \;

#---------------------------------------------------------------------------------
craftus:
#---------------------------------------------------------------------------------
	@for i in $(MAKEFILES); do $(MAKE) -C `dirname $$i` || exit 1; done;

#---------------------------------------------------------------------------------
clean:
#---------------------------------------------------------------------------------
	@rm -fr bin
	@rm -f *.bz2
	@for i in $(MAKEFILES); do $(MAKE) -C `dirname $$i` clean || exit 1; done;

#---------------------------------------------------------------------------------
dist: clean
#---------------------------------------------------------------------------------
	@tar -cvjf craftus-$(DATESTRING).tar.bz2 *