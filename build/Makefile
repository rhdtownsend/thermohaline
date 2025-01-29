# File     : Makefile
# Purpose  : makefile for build subdir

# Targets

BIN_TARGETS = thermo_gersh thermo_solve thermo_scan_1d thermo_scan_2d pert_expand

# Source file lists & related variables
#
# xxx_SRCS = source files required to compile xxx
# xxx_USES = source files providing modules USE'd by xxx
# xxx_LIBS = library files required to link xxx

thermo_scan_1d_SRCS = thermo_scan_1d.fypp thermo_m.fypp params_m.fypp flags_m.fypp matrix_m.fypp matrix_full_m.fypp matrix_lpn_m.fypp matrix_lpn_qs_m.fypp finger_m.fypp parasite_model_matrices.fypp linalg_m.fypp
thermo_scan_1d_USES = 
thermo_scan_1d_LIBS = 

thermo_scan_2d_SRCS = thermo_scan_2d.fypp thermo_m.fypp params_m.fypp flags_m.fypp matrix_m.fypp matrix_full_m.fypp matrix_lpn_m.fypp matrix_lpn_qs_m.fypp finger_m.fypp parasite_model_matrices.fypp linalg_m.fypp
thermo_scan_2d_USES = 
thermo_scan_2d_LIBS =

thermo_gersh_SRCS = thermo_gersh.fypp thermo_m.fypp params_m.fypp flags_m.fypp matrix_m.fypp matrix_full_m.fypp matrix_lpn_m.fypp matrix_lpn_qs_m.fypp finger_m.fypp parasite_model_matrices.fypp linalg_m.fypp
thermo_gersh_USES = 
thermo_gersh_LIBS =

thermo_solve_SRCS = thermo_solve.fypp thermo_solve_m.fypp thermo_m.fypp params_m.fypp flags_m.fypp matrix_m.fypp matrix_full_m.fypp matrix_lpn_m.fypp matrix_lpn_qs_m.fypp finger_m.fypp parasite_model_matrices.fypp linalg_m.fypp root_m.fypp
thermo_solve_USES = 
thermo_solve_LIBS =

pert_expand_SRCS = pert_expand.fypp pert_expand_m.fypp params_m.fypp flags_m.fypp finger_m.fypp linalg_m.fypp matrix_m.fypp matrix_full_m.fypp matrix_lpn_m.fypp matrix_lpn_qs_m.fypp parasite_model_matrices.fypp
pert_expand_USES = 
pert_expand_LIBS =

# Build flags

FFLAGS = -I$(FORUM_INC_DIR)

FPPFLAGS = -I$(FORUM_INC_DIR)

LDFLAGS = `lapack_link` `hdf5_link` `lapack95_link` -L$(FORUM_LIB_DIR) -lforum

# Include standard rules

include Make.inc
