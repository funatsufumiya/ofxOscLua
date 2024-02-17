SWIG = swig
LANG = lua
DEST_DIR = src
SWIG_FLAGS = -O -small

.PHONY: osc osc-symbols osc-clean
all: osc osc-symbols

# generates bindings
osc: 
	@mkdir -p $(DEST_DIR)
	$(SWIG) -c++ -$(LANG) $(SWIG_FLAGS) -I../ofxOsc/src -o $(DEST_DIR)/oscBindings.cpp osc.i

# outputs swig language symbols
osc-symbols:
	$(SWIG) -c++ -$(LANG) $(SWIG_FLAGS) -debug-lsymbols -I../ofxOsc/src osc.i > osc_$(LANG)_symbols.txt
	rm -f *.cxx

# clean dest dir
osc-clean:
	rm -f $(DEST_DIR)/oscBindings.cpp
	rm -f osc_*_symbols.txt
