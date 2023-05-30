SHELL_FILES := awkcol.sh bak.sh cmdify.sh cptm.sh ghdl.sh rep.sh trdn.sh mvtm.sh
INSTALL_DIR := ~/opt/bin
BINS := $(patsubst %.sh, $(INSTALL_DIR)/%, $(SHELL_FILES))

.PHONY: clean
all: $(BINS)

$(INSTALL_DIR)/%: %.sh
	install --mode=777 $< $@

clean: $(BINS)
	rm $(BINS)
