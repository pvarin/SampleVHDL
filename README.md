SampleVHDL
==========

Contains all of the basic structure for a larger scale VHDL project including the Makefile, example code, and a testbench

Dependencies
------------
The code here was developed and tested in Ubuntu 12.04, but should be adaptable to other operating systems with minimal effort.

GHDL: In order to insall GHDL type the following commands into the command-line
```
sudo add-apt-repository ppa:pgavin/ghdl
sudo apt-get update
sudo apt-get install ghdl
```
GTKWave: In order to install GTKWave type the following commands into the command-line:
```
sudo apt-get install gtkwave
```

Usage
-----
In order to run the test bench and visualize the results simply type ```make``` into the command-line while you are in the project's root directory. This will compile and run the simulation and then show you the results with GTKWave.

**Compile**: To compile the code type ```make ghdl-compile``` into the command-line.

**Run**: To run the simulation without compiling type ```make ghdl-run``` into the command-line.

**View**: To visualize the last simulation that ran type ```make ghdl-view``` into the command-line.

Makefile
--------
The Makefile contains all of the parameters that you will need to change as you add or delete code. Including which files to include, which files to run in simulation, and how long to run the simulation.
