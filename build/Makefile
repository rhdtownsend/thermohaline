# File     : Makefile
# Purpose  : makefile for build subdir

# Targets

BIN_TARGETS = thermo

# Source file lists & related variables
#
# xxx_SRCS = source files required to compile xxx
# xxx_USES = source files providing modules USE'd by xxx
# xxx_LIBS = library files required to link xxx

thermo_SRCS = thermo.fypp params_m.fypp matrix_m.fypp finger_m.fypp parasite_model_matrices.fypp
thermo_USES = 
thermo_LIBS = 

# Build flags

FFLAGS = -I$(FORUM_INC_DIR)

FPPFLAGS = -I$(FORUM_INC_DIR)

LDFLAGS = `lapack_link` `hdf5_link` `lapack95_link` -L$(FORUM_LIB_DIR) -lforum

# Include standard rules

include Make.inc
