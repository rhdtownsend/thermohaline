# File     : Makefile
# Purpose  : makefile for build subdir

# Enable debugging (with a performance penalty)
DEBUG ?= yes

# Enable OpenMP parallelization
OMP ?= yes

# Enable FPE checks
FPE ?= yes

############ DO NOT EDIT BELOW THIS LINE ############
### (unless you think you know what you're doing) ###
#####################################################

# Targets

BIN_TARGETS = thermo

# Source file lists & related variables
#
# xxx_SRCS = source files required to compile xxx
# xxx_USES = source files providing modules USE'd by xxx
# xxx_LIBS = library files required to link xxx

thermo_SRCS = thermo.fypp params_m.fypp matrix_m.fypp finger_m.fypp LU_solver_m.fypp eig_solver_m.fypp
thermo_USES = 
thermo_LIBS = 

# Directories

SRC_DIRS = ../src ../src/forum/include

# Additional rules

include Make.inc
