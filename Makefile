# File     : Makefile
# Purpose  : top-level makefile

# Build ForUM internally. If not set to "yes", then
# you must set FORUM_LIB_DIR and FORUM_INC_DIR to
# point to where the ForUM library and module files,
# respectively, are located
FORUM ?= yes

# Enable debugging (with a performance penalty)
DEBUG ?= yes

# Build & link against shared libraries
SHARED ?= yes

# Enable OpenMP parallelization
OMP ?= yes

# Enable FPE checks
FPE ?= yes

############ DO NOT EDIT BELOW THIS LINE ############
### (unless you think you know what you're doing) ###
#####################################################

# General make settings

export

SH = /bin/bash
MAKEFLAGS += --no-print-directory

# Paths

BIN_DIR ?= $(CURDIR)/bin
LIB_DIR ?= $(CURDIR)/lib
INC_DIR ?= $(CURDIR)/include

SRC_DIR = $(CURDIR)/src
SRC_DIRS = $(SRC_DIR)

ifeq ($(FORUM),yes)
   FORUM_LIB_DIR = $(LIB_DIR)
   FORUM_INC_DIR = $(INC_DIR)
endif

# Rules

all : install-forum
	@$(MAKE) -C build

install : all | $(BIN_DIR) $(LIB_DIR) $(INC_DIR)
	@$(MAKE) -C build install

clean : clean-forum
	@$(MAKE) -C build clean
	@rm -rf $(BIN_DIR) $(LIB_DIR) $(INC_DIR)

ifeq ($(FORUM),yes)

   install-forum : | $(BIN_DIR) $(LIB_DIR) $(INC_DIR)
	@$(MAKE) -C src/forum install

   clean-forum :
	@$(MAKE) -C src/forum clean

else

   install-forum : ;
   clean-forum : ;

endif

.PHONY: all install clean install-forum clean-forum

$(BIN_DIR) $(LIB_DIR) $(INC_DIR) :
	@mkdir -p $@
