# This makefile was inspired by a makefile tutorial created by the github user mauriciopoppe.
# Link to tutorial: https://www.mauriciopoppe.com/notes/computer-science/operating-systems/bin/make/
# The original can be found in the following repository: https://gist.github.com/mauriciopoppe/de8908f67923091982c8c8136a063ea6

CXX ?= g++

# path
SRC_PATH = ./src
BUILD_PATH = objectFiles
BIN_PATH = $(BUILD_PATH)/bin

# executables, either debug or release
BIN_NAME = output
BIN_NAME_DEBUG = output_debug

# extensions
SRC_EXT = cpp

# Find all source files in the source directory, sorted by
# most recently modified
SOURCES = $(shell find $(SRC_PATH) -name '*.$(SRC_EXT)' | sort -k 1nr | cut -f2-)

# Set the object file names, with the source directory stripped
# from the path, and the build path prepended in its place
OBJECTS = $(SOURCES:$(SRC_PATH)/%.$(SRC_EXT)=$(BUILD_PATH)/%.o)

# Set the dependency files that will be used to add header dependencies
DEPS = $(OBJECTS:.o=.d)

# flags for both Debug and Optimized Compilation
COMPILE_FLAGS = -std=c++11 -Wall -Wextra -O2
DEBUG_FLAGS = -std=c++11 -Wall -Wextra -g


#Set default make to debug
.PHONY: default_target
default_target: debug

#release settings and flags
.PHONY: release
release: export CXXFLAGS := $(CXXFLAGS) $(COMPILE_FLAGS) #set Optimization Flags to CXXFLAGS
release: dirs
	@$(MAKE) all

#debug settings and flags
.PHONY: debug
debug: export CXXFLAGS := $(CXXFLAGS) $(DEBUG_FLAGS) #set Debug Flags to CXXFLAGS
debug: dirs
	@$(MAKE) debug_build


.PHONY: dirs
dirs:
	@mkdir -p $(dir $(OBJECTS))
	@mkdir -p $(BIN_PATH)

# Remove object directories and output files
.PHONY: clean
clean:
	@$(RM) $(BIN_NAME)
	@$(RM) $(BIN_NAME_DEBUG)
	@$(RM) -r $(BUILD_PATH)
	@$(RM) -r $(BIN_PATH)

# checks the executable and symlinks to the output
.PHONY: all
all: $(BIN_PATH)/$(BIN_NAME)
	@$(RM) $(BIN_NAME)
	@ln -s $(BIN_PATH)/$(BIN_NAME) $(BIN_NAME)

# Creation of the executable
$(BIN_PATH)/$(BIN_NAME): $(OBJECTS)
	$(CXX) $(OBJECTS) -o $@ 

# Add dependency files, if they exist
-include $(DEPS)

# Similar to release but added Debug flags instead of -O2 optimization
.PHONY: debug_build
debug_build: $(BIN_PATH)/$(BIN_NAME_DEBUG)
	@$(RM) $(BIN_NAME_DEBUG)
	@ln -s $(BIN_PATH)/$(BIN_NAME_DEBUG) $(BIN_NAME_DEBUG)

# Creation of the executable
$(BIN_PATH)/$(BIN_NAME_DEBUG): $(OBJECTS)
	$(CXX) $(OBJECTS) -o $@ ${LIBS}

# Add dependency files, if they exist
-include $(DEPS)

# Source file rules
# After the first compilation they will be joined with the rules from the
# dependency files to provide header dependencies
$(BUILD_PATH)/%.o: $(SRC_PATH)/%.$(SRC_EXT)
	$(CXX) $(CXXFLAGS) -MP -MMD -c $< -o $@