#################
##### Files #####
#################
FILES		= src/OR2.vhd src/AND2.vhd src/NOT2.vhd
SIMDIR		= sim
SIMTOP		= gates_tb
SIMFILES	= testbench/gates_tb.vhd

##############
#### GHDL ####
##############
GHDL_CMD	= ghdl
GHDL_FLAGS	= --ieee=synopsys --warn-no-vital-generic
GHDL_STOP	= --stop-time=40ns
#GHDL_STOP    = --assert-level=error

#############
#### VIS ####
#############
VIEW_CMD        = /usr/bin/gtkwave

###############
#### SYNTH ####
###############
#SYNTHFILES = bin/bus_led_ise/netgen/synthesis


##################
#### Commands ####
##################
all:
	make ghdl-compile
	make ghdl-run
	make ghdl-view

ghdl-compile:
	mkdir -p sim
	$(GHDL_CMD) -i $(GHDL_FLAGS) --workdir=sim --work=work $(SIMFILES) $(FILES)
	$(GHDL_CMD) -m $(GHDL_FLAGS) --workdir=sim --work=work $(SIMTOP)
	mv $(SIMTOP) sim/$(SIMTOP)

ghdl-run:
	$(SIMDIR)/$(SIMTOP) $(GHDL_STOP) --vcdgz=$(SIMDIR)/$(SIMTOP).vcdgz

ghdl-view:
	gunzip --stdout $(SIMDIR)/$(SIMTOP).vcdgz | $(VIEW_CMD) --vcd

ghdl-clean:
	$(GHDL_CMD) --clean --workdir=sim