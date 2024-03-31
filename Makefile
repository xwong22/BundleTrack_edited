# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/agibot/Documents/cjh_hxy/BundleTrack

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/agibot/Documents/cjh_hxy/BundleTrack/build

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip/fast

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Available install components are: \"Unspecified\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components

.PHONY : list_install_components/fast

# Special rule for the target test
test:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running tests..."
	/usr/bin/ctest --force-new-ctest-process $(ARGS)
.PHONY : test

# Special rule for the target test
test/fast: test

.PHONY : test/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/agibot/Documents/cjh_hxy/BundleTrack/build/CMakeFiles /home/agibot/Documents/cjh_hxy/BundleTrack/build/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/agibot/Documents/cjh_hxy/BundleTrack/build/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named roscpp_generate_messages_nodejs

# Build rule for target.
roscpp_generate_messages_nodejs: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 roscpp_generate_messages_nodejs
.PHONY : roscpp_generate_messages_nodejs

# fast build rule for target.
roscpp_generate_messages_nodejs/fast:
	$(MAKE) -f CMakeFiles/roscpp_generate_messages_nodejs.dir/build.make CMakeFiles/roscpp_generate_messages_nodejs.dir/build
.PHONY : roscpp_generate_messages_nodejs/fast

#=============================================================================
# Target rules for targets named std_msgs_generate_messages_eus

# Build rule for target.
std_msgs_generate_messages_eus: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 std_msgs_generate_messages_eus
.PHONY : std_msgs_generate_messages_eus

# fast build rule for target.
std_msgs_generate_messages_eus/fast:
	$(MAKE) -f CMakeFiles/std_msgs_generate_messages_eus.dir/build.make CMakeFiles/std_msgs_generate_messages_eus.dir/build
.PHONY : std_msgs_generate_messages_eus/fast

#=============================================================================
# Target rules for targets named bundle_track_nocs

# Build rule for target.
bundle_track_nocs: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 bundle_track_nocs
.PHONY : bundle_track_nocs

# fast build rule for target.
bundle_track_nocs/fast:
	$(MAKE) -f CMakeFiles/bundle_track_nocs.dir/build.make CMakeFiles/bundle_track_nocs.dir/build
.PHONY : bundle_track_nocs/fast

#=============================================================================
# Target rules for targets named roscpp_generate_messages_cpp

# Build rule for target.
roscpp_generate_messages_cpp: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 roscpp_generate_messages_cpp
.PHONY : roscpp_generate_messages_cpp

# fast build rule for target.
roscpp_generate_messages_cpp/fast:
	$(MAKE) -f CMakeFiles/roscpp_generate_messages_cpp.dir/build.make CMakeFiles/roscpp_generate_messages_cpp.dir/build
.PHONY : roscpp_generate_messages_cpp/fast

#=============================================================================
# Target rules for targets named roscpp_generate_messages_py

# Build rule for target.
roscpp_generate_messages_py: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 roscpp_generate_messages_py
.PHONY : roscpp_generate_messages_py

# fast build rule for target.
roscpp_generate_messages_py/fast:
	$(MAKE) -f CMakeFiles/roscpp_generate_messages_py.dir/build.make CMakeFiles/roscpp_generate_messages_py.dir/build
.PHONY : roscpp_generate_messages_py/fast

#=============================================================================
# Target rules for targets named rosgraph_msgs_generate_messages_py

# Build rule for target.
rosgraph_msgs_generate_messages_py: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 rosgraph_msgs_generate_messages_py
.PHONY : rosgraph_msgs_generate_messages_py

# fast build rule for target.
rosgraph_msgs_generate_messages_py/fast:
	$(MAKE) -f CMakeFiles/rosgraph_msgs_generate_messages_py.dir/build.make CMakeFiles/rosgraph_msgs_generate_messages_py.dir/build
.PHONY : rosgraph_msgs_generate_messages_py/fast

#=============================================================================
# Target rules for targets named doxygen

# Build rule for target.
doxygen: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 doxygen
.PHONY : doxygen

# fast build rule for target.
doxygen/fast:
	$(MAKE) -f CMakeFiles/doxygen.dir/build.make CMakeFiles/doxygen.dir/build
.PHONY : doxygen/fast

#=============================================================================
# Target rules for targets named rosgraph_msgs_generate_messages_lisp

# Build rule for target.
rosgraph_msgs_generate_messages_lisp: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 rosgraph_msgs_generate_messages_lisp
.PHONY : rosgraph_msgs_generate_messages_lisp

# fast build rule for target.
rosgraph_msgs_generate_messages_lisp/fast:
	$(MAKE) -f CMakeFiles/rosgraph_msgs_generate_messages_lisp.dir/build.make CMakeFiles/rosgraph_msgs_generate_messages_lisp.dir/build
.PHONY : rosgraph_msgs_generate_messages_lisp/fast

#=============================================================================
# Target rules for targets named download_extra_data

# Build rule for target.
download_extra_data: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 download_extra_data
.PHONY : download_extra_data

# fast build rule for target.
download_extra_data/fast:
	$(MAKE) -f CMakeFiles/download_extra_data.dir/build.make CMakeFiles/download_extra_data.dir/build
.PHONY : download_extra_data/fast

#=============================================================================
# Target rules for targets named run_tests

# Build rule for target.
run_tests: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 run_tests
.PHONY : run_tests

# fast build rule for target.
run_tests/fast:
	$(MAKE) -f CMakeFiles/run_tests.dir/build.make CMakeFiles/run_tests.dir/build
.PHONY : run_tests/fast

#=============================================================================
# Target rules for targets named std_msgs_generate_messages_lisp

# Build rule for target.
std_msgs_generate_messages_lisp: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 std_msgs_generate_messages_lisp
.PHONY : std_msgs_generate_messages_lisp

# fast build rule for target.
std_msgs_generate_messages_lisp/fast:
	$(MAKE) -f CMakeFiles/std_msgs_generate_messages_lisp.dir/build.make CMakeFiles/std_msgs_generate_messages_lisp.dir/build
.PHONY : std_msgs_generate_messages_lisp/fast

#=============================================================================
# Target rules for targets named roscpp_generate_messages_lisp

# Build rule for target.
roscpp_generate_messages_lisp: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 roscpp_generate_messages_lisp
.PHONY : roscpp_generate_messages_lisp

# fast build rule for target.
roscpp_generate_messages_lisp/fast:
	$(MAKE) -f CMakeFiles/roscpp_generate_messages_lisp.dir/build.make CMakeFiles/roscpp_generate_messages_lisp.dir/build
.PHONY : roscpp_generate_messages_lisp/fast

#=============================================================================
# Target rules for targets named clean_test_results

# Build rule for target.
clean_test_results: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 clean_test_results
.PHONY : clean_test_results

# fast build rule for target.
clean_test_results/fast:
	$(MAKE) -f CMakeFiles/clean_test_results.dir/build.make CMakeFiles/clean_test_results.dir/build
.PHONY : clean_test_results/fast

#=============================================================================
# Target rules for targets named bundle_track_ycbineoat

# Build rule for target.
bundle_track_ycbineoat: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 bundle_track_ycbineoat
.PHONY : bundle_track_ycbineoat

# fast build rule for target.
bundle_track_ycbineoat/fast:
	$(MAKE) -f CMakeFiles/bundle_track_ycbineoat.dir/build.make CMakeFiles/bundle_track_ycbineoat.dir/build
.PHONY : bundle_track_ycbineoat/fast

#=============================================================================
# Target rules for targets named tests

# Build rule for target.
tests: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 tests
.PHONY : tests

# fast build rule for target.
tests/fast:
	$(MAKE) -f CMakeFiles/tests.dir/build.make CMakeFiles/tests.dir/build
.PHONY : tests/fast

#=============================================================================
# Target rules for targets named rosgraph_msgs_generate_messages_nodejs

# Build rule for target.
rosgraph_msgs_generate_messages_nodejs: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 rosgraph_msgs_generate_messages_nodejs
.PHONY : rosgraph_msgs_generate_messages_nodejs

# fast build rule for target.
rosgraph_msgs_generate_messages_nodejs/fast:
	$(MAKE) -f CMakeFiles/rosgraph_msgs_generate_messages_nodejs.dir/build.make CMakeFiles/rosgraph_msgs_generate_messages_nodejs.dir/build
.PHONY : rosgraph_msgs_generate_messages_nodejs/fast

#=============================================================================
# Target rules for targets named std_msgs_generate_messages_cpp

# Build rule for target.
std_msgs_generate_messages_cpp: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 std_msgs_generate_messages_cpp
.PHONY : std_msgs_generate_messages_cpp

# fast build rule for target.
std_msgs_generate_messages_cpp/fast:
	$(MAKE) -f CMakeFiles/std_msgs_generate_messages_cpp.dir/build.make CMakeFiles/std_msgs_generate_messages_cpp.dir/build
.PHONY : std_msgs_generate_messages_cpp/fast

#=============================================================================
# Target rules for targets named BundleTrack

# Build rule for target.
BundleTrack: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 BundleTrack
.PHONY : BundleTrack

# fast build rule for target.
BundleTrack/fast:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/build
.PHONY : BundleTrack/fast

#=============================================================================
# Target rules for targets named std_msgs_generate_messages_nodejs

# Build rule for target.
std_msgs_generate_messages_nodejs: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 std_msgs_generate_messages_nodejs
.PHONY : std_msgs_generate_messages_nodejs

# fast build rule for target.
std_msgs_generate_messages_nodejs/fast:
	$(MAKE) -f CMakeFiles/std_msgs_generate_messages_nodejs.dir/build.make CMakeFiles/std_msgs_generate_messages_nodejs.dir/build
.PHONY : std_msgs_generate_messages_nodejs/fast

#=============================================================================
# Target rules for targets named std_msgs_generate_messages_py

# Build rule for target.
std_msgs_generate_messages_py: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 std_msgs_generate_messages_py
.PHONY : std_msgs_generate_messages_py

# fast build rule for target.
std_msgs_generate_messages_py/fast:
	$(MAKE) -f CMakeFiles/std_msgs_generate_messages_py.dir/build.make CMakeFiles/std_msgs_generate_messages_py.dir/build
.PHONY : std_msgs_generate_messages_py/fast

#=============================================================================
# Target rules for targets named rosgraph_msgs_generate_messages_cpp

# Build rule for target.
rosgraph_msgs_generate_messages_cpp: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 rosgraph_msgs_generate_messages_cpp
.PHONY : rosgraph_msgs_generate_messages_cpp

# fast build rule for target.
rosgraph_msgs_generate_messages_cpp/fast:
	$(MAKE) -f CMakeFiles/rosgraph_msgs_generate_messages_cpp.dir/build.make CMakeFiles/rosgraph_msgs_generate_messages_cpp.dir/build
.PHONY : rosgraph_msgs_generate_messages_cpp/fast

#=============================================================================
# Target rules for targets named roscpp_generate_messages_eus

# Build rule for target.
roscpp_generate_messages_eus: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 roscpp_generate_messages_eus
.PHONY : roscpp_generate_messages_eus

# fast build rule for target.
roscpp_generate_messages_eus/fast:
	$(MAKE) -f CMakeFiles/roscpp_generate_messages_eus.dir/build.make CMakeFiles/roscpp_generate_messages_eus.dir/build
.PHONY : roscpp_generate_messages_eus/fast

#=============================================================================
# Target rules for targets named rosgraph_msgs_generate_messages_eus

# Build rule for target.
rosgraph_msgs_generate_messages_eus: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 rosgraph_msgs_generate_messages_eus
.PHONY : rosgraph_msgs_generate_messages_eus

# fast build rule for target.
rosgraph_msgs_generate_messages_eus/fast:
	$(MAKE) -f CMakeFiles/rosgraph_msgs_generate_messages_eus.dir/build.make CMakeFiles/rosgraph_msgs_generate_messages_eus.dir/build
.PHONY : rosgraph_msgs_generate_messages_eus/fast

#=============================================================================
# Target rules for targets named gmock_main

# Build rule for target.
gmock_main: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 gmock_main
.PHONY : gmock_main

# fast build rule for target.
gmock_main/fast:
	$(MAKE) -f gtest/googlemock/CMakeFiles/gmock_main.dir/build.make gtest/googlemock/CMakeFiles/gmock_main.dir/build
.PHONY : gmock_main/fast

#=============================================================================
# Target rules for targets named gmock

# Build rule for target.
gmock: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 gmock
.PHONY : gmock

# fast build rule for target.
gmock/fast:
	$(MAKE) -f gtest/googlemock/CMakeFiles/gmock.dir/build.make gtest/googlemock/CMakeFiles/gmock.dir/build
.PHONY : gmock/fast

#=============================================================================
# Target rules for targets named gtest_main

# Build rule for target.
gtest_main: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 gtest_main
.PHONY : gtest_main

# fast build rule for target.
gtest_main/fast:
	$(MAKE) -f gtest/googletest/CMakeFiles/gtest_main.dir/build.make gtest/googletest/CMakeFiles/gtest_main.dir/build
.PHONY : gtest_main/fast

#=============================================================================
# Target rules for targets named gtest

# Build rule for target.
gtest: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 gtest
.PHONY : gtest

# fast build rule for target.
gtest/fast:
	$(MAKE) -f gtest/googletest/CMakeFiles/gtest.dir/build.make gtest/googletest/CMakeFiles/gtest.dir/build
.PHONY : gtest/fast

src/Bundler.o: src/Bundler.cpp.o

.PHONY : src/Bundler.o

# target to build an object file
src/Bundler.cpp.o:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/Bundler.cpp.o
.PHONY : src/Bundler.cpp.o

src/Bundler.i: src/Bundler.cpp.i

.PHONY : src/Bundler.i

# target to preprocess a source file
src/Bundler.cpp.i:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/Bundler.cpp.i
.PHONY : src/Bundler.cpp.i

src/Bundler.s: src/Bundler.cpp.s

.PHONY : src/Bundler.s

# target to generate assembly for a file
src/Bundler.cpp.s:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/Bundler.cpp.s
.PHONY : src/Bundler.cpp.s

src/DataLoader.o: src/DataLoader.cpp.o

.PHONY : src/DataLoader.o

# target to build an object file
src/DataLoader.cpp.o:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/DataLoader.cpp.o
.PHONY : src/DataLoader.cpp.o

src/DataLoader.i: src/DataLoader.cpp.i

.PHONY : src/DataLoader.i

# target to preprocess a source file
src/DataLoader.cpp.i:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/DataLoader.cpp.i
.PHONY : src/DataLoader.cpp.i

src/DataLoader.s: src/DataLoader.cpp.s

.PHONY : src/DataLoader.s

# target to generate assembly for a file
src/DataLoader.cpp.s:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/DataLoader.cpp.s
.PHONY : src/DataLoader.cpp.s

src/FeatureManager.o: src/FeatureManager.cpp.o

.PHONY : src/FeatureManager.o

# target to build an object file
src/FeatureManager.cpp.o:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/FeatureManager.cpp.o
.PHONY : src/FeatureManager.cpp.o

src/FeatureManager.i: src/FeatureManager.cpp.i

.PHONY : src/FeatureManager.i

# target to preprocess a source file
src/FeatureManager.cpp.i:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/FeatureManager.cpp.i
.PHONY : src/FeatureManager.cpp.i

src/FeatureManager.s: src/FeatureManager.cpp.s

.PHONY : src/FeatureManager.s

# target to generate assembly for a file
src/FeatureManager.cpp.s:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/FeatureManager.cpp.s
.PHONY : src/FeatureManager.cpp.s

src/Frame.o: src/Frame.cpp.o

.PHONY : src/Frame.o

# target to build an object file
src/Frame.cpp.o:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/Frame.cpp.o
.PHONY : src/Frame.cpp.o

src/Frame.i: src/Frame.cpp.i

.PHONY : src/Frame.i

# target to preprocess a source file
src/Frame.cpp.i:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/Frame.cpp.i
.PHONY : src/Frame.cpp.i

src/Frame.s: src/Frame.cpp.s

.PHONY : src/Frame.s

# target to generate assembly for a file
src/Frame.cpp.s:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/Frame.cpp.s
.PHONY : src/Frame.cpp.s

src/Utils.o: src/Utils.cpp.o

.PHONY : src/Utils.o

# target to build an object file
src/Utils.cpp.o:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/Utils.cpp.o
.PHONY : src/Utils.cpp.o

src/Utils.i: src/Utils.cpp.i

.PHONY : src/Utils.i

# target to preprocess a source file
src/Utils.cpp.i:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/Utils.cpp.i
.PHONY : src/Utils.cpp.i

src/Utils.s: src/Utils.cpp.s

.PHONY : src/Utils.s

# target to generate assembly for a file
src/Utils.cpp.s:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/Utils.cpp.s
.PHONY : src/Utils.cpp.s

src/app/bundle_track_nocs.o: src/app/bundle_track_nocs.cpp.o

.PHONY : src/app/bundle_track_nocs.o

# target to build an object file
src/app/bundle_track_nocs.cpp.o:
	$(MAKE) -f CMakeFiles/bundle_track_nocs.dir/build.make CMakeFiles/bundle_track_nocs.dir/src/app/bundle_track_nocs.cpp.o
.PHONY : src/app/bundle_track_nocs.cpp.o

src/app/bundle_track_nocs.i: src/app/bundle_track_nocs.cpp.i

.PHONY : src/app/bundle_track_nocs.i

# target to preprocess a source file
src/app/bundle_track_nocs.cpp.i:
	$(MAKE) -f CMakeFiles/bundle_track_nocs.dir/build.make CMakeFiles/bundle_track_nocs.dir/src/app/bundle_track_nocs.cpp.i
.PHONY : src/app/bundle_track_nocs.cpp.i

src/app/bundle_track_nocs.s: src/app/bundle_track_nocs.cpp.s

.PHONY : src/app/bundle_track_nocs.s

# target to generate assembly for a file
src/app/bundle_track_nocs.cpp.s:
	$(MAKE) -f CMakeFiles/bundle_track_nocs.dir/build.make CMakeFiles/bundle_track_nocs.dir/src/app/bundle_track_nocs.cpp.s
.PHONY : src/app/bundle_track_nocs.cpp.s

src/app/bundle_track_ycbineoat.o: src/app/bundle_track_ycbineoat.cpp.o

.PHONY : src/app/bundle_track_ycbineoat.o

# target to build an object file
src/app/bundle_track_ycbineoat.cpp.o:
	$(MAKE) -f CMakeFiles/bundle_track_ycbineoat.dir/build.make CMakeFiles/bundle_track_ycbineoat.dir/src/app/bundle_track_ycbineoat.cpp.o
.PHONY : src/app/bundle_track_ycbineoat.cpp.o

src/app/bundle_track_ycbineoat.i: src/app/bundle_track_ycbineoat.cpp.i

.PHONY : src/app/bundle_track_ycbineoat.i

# target to preprocess a source file
src/app/bundle_track_ycbineoat.cpp.i:
	$(MAKE) -f CMakeFiles/bundle_track_ycbineoat.dir/build.make CMakeFiles/bundle_track_ycbineoat.dir/src/app/bundle_track_ycbineoat.cpp.i
.PHONY : src/app/bundle_track_ycbineoat.cpp.i

src/app/bundle_track_ycbineoat.s: src/app/bundle_track_ycbineoat.cpp.s

.PHONY : src/app/bundle_track_ycbineoat.s

# target to generate assembly for a file
src/app/bundle_track_ycbineoat.cpp.s:
	$(MAKE) -f CMakeFiles/bundle_track_ycbineoat.dir/build.make CMakeFiles/bundle_track_ycbineoat.dir/src/app/bundle_track_ycbineoat.cpp.s
.PHONY : src/app/bundle_track_ycbineoat.cpp.s

src/cuda/CUDACache.o: src/cuda/CUDACache.cpp.o

.PHONY : src/cuda/CUDACache.o

# target to build an object file
src/cuda/CUDACache.cpp.o:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/cuda/CUDACache.cpp.o
.PHONY : src/cuda/CUDACache.cpp.o

src/cuda/CUDACache.i: src/cuda/CUDACache.cpp.i

.PHONY : src/cuda/CUDACache.i

# target to preprocess a source file
src/cuda/CUDACache.cpp.i:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/cuda/CUDACache.cpp.i
.PHONY : src/cuda/CUDACache.cpp.i

src/cuda/CUDACache.s: src/cuda/CUDACache.cpp.s

.PHONY : src/cuda/CUDACache.s

# target to generate assembly for a file
src/cuda/CUDACache.cpp.s:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/cuda/CUDACache.cpp.s
.PHONY : src/cuda/CUDACache.cpp.s

src/cuda/SBA.o: src/cuda/SBA.cpp.o

.PHONY : src/cuda/SBA.o

# target to build an object file
src/cuda/SBA.cpp.o:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/cuda/SBA.cpp.o
.PHONY : src/cuda/SBA.cpp.o

src/cuda/SBA.i: src/cuda/SBA.cpp.i

.PHONY : src/cuda/SBA.i

# target to preprocess a source file
src/cuda/SBA.cpp.i:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/cuda/SBA.cpp.i
.PHONY : src/cuda/SBA.cpp.i

src/cuda/SBA.s: src/cuda/SBA.cpp.s

.PHONY : src/cuda/SBA.s

# target to generate assembly for a file
src/cuda/SBA.cpp.s:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/cuda/SBA.cpp.s
.PHONY : src/cuda/SBA.cpp.s

src/cuda/SIFTImageManager.o: src/cuda/SIFTImageManager.cpp.o

.PHONY : src/cuda/SIFTImageManager.o

# target to build an object file
src/cuda/SIFTImageManager.cpp.o:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/cuda/SIFTImageManager.cpp.o
.PHONY : src/cuda/SIFTImageManager.cpp.o

src/cuda/SIFTImageManager.i: src/cuda/SIFTImageManager.cpp.i

.PHONY : src/cuda/SIFTImageManager.i

# target to preprocess a source file
src/cuda/SIFTImageManager.cpp.i:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/cuda/SIFTImageManager.cpp.i
.PHONY : src/cuda/SIFTImageManager.cpp.i

src/cuda/SIFTImageManager.s: src/cuda/SIFTImageManager.cpp.s

.PHONY : src/cuda/SIFTImageManager.s

# target to generate assembly for a file
src/cuda/SIFTImageManager.cpp.s:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/cuda/SIFTImageManager.cpp.s
.PHONY : src/cuda/SIFTImageManager.cpp.s

src/cuda/Solver/CUDASolverBundling.o: src/cuda/Solver/CUDASolverBundling.cpp.o

.PHONY : src/cuda/Solver/CUDASolverBundling.o

# target to build an object file
src/cuda/Solver/CUDASolverBundling.cpp.o:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/cuda/Solver/CUDASolverBundling.cpp.o
.PHONY : src/cuda/Solver/CUDASolverBundling.cpp.o

src/cuda/Solver/CUDASolverBundling.i: src/cuda/Solver/CUDASolverBundling.cpp.i

.PHONY : src/cuda/Solver/CUDASolverBundling.i

# target to preprocess a source file
src/cuda/Solver/CUDASolverBundling.cpp.i:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/cuda/Solver/CUDASolverBundling.cpp.i
.PHONY : src/cuda/Solver/CUDASolverBundling.cpp.i

src/cuda/Solver/CUDASolverBundling.s: src/cuda/Solver/CUDASolverBundling.cpp.s

.PHONY : src/cuda/Solver/CUDASolverBundling.s

# target to generate assembly for a file
src/cuda/Solver/CUDASolverBundling.cpp.s:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/cuda/Solver/CUDASolverBundling.cpp.s
.PHONY : src/cuda/Solver/CUDASolverBundling.cpp.s

src/cuda/TimingLog.o: src/cuda/TimingLog.cpp.o

.PHONY : src/cuda/TimingLog.o

# target to build an object file
src/cuda/TimingLog.cpp.o:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/cuda/TimingLog.cpp.o
.PHONY : src/cuda/TimingLog.cpp.o

src/cuda/TimingLog.i: src/cuda/TimingLog.cpp.i

.PHONY : src/cuda/TimingLog.i

# target to preprocess a source file
src/cuda/TimingLog.cpp.i:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/cuda/TimingLog.cpp.i
.PHONY : src/cuda/TimingLog.cpp.i

src/cuda/TimingLog.s: src/cuda/TimingLog.cpp.s

.PHONY : src/cuda/TimingLog.s

# target to generate assembly for a file
src/cuda/TimingLog.cpp.s:
	$(MAKE) -f CMakeFiles/BundleTrack.dir/build.make CMakeFiles/BundleTrack.dir/src/cuda/TimingLog.cpp.s
.PHONY : src/cuda/TimingLog.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... install/strip"
	@echo "... roscpp_generate_messages_nodejs"
	@echo "... std_msgs_generate_messages_eus"
	@echo "... install"
	@echo "... bundle_track_nocs"
	@echo "... roscpp_generate_messages_cpp"
	@echo "... roscpp_generate_messages_py"
	@echo "... rosgraph_msgs_generate_messages_py"
	@echo "... doxygen"
	@echo "... rosgraph_msgs_generate_messages_lisp"
	@echo "... download_extra_data"
	@echo "... run_tests"
	@echo "... std_msgs_generate_messages_lisp"
	@echo "... list_install_components"
	@echo "... roscpp_generate_messages_lisp"
	@echo "... clean_test_results"
	@echo "... bundle_track_ycbineoat"
	@echo "... tests"
	@echo "... rosgraph_msgs_generate_messages_nodejs"
	@echo "... std_msgs_generate_messages_cpp"
	@echo "... BundleTrack"
	@echo "... std_msgs_generate_messages_nodejs"
	@echo "... std_msgs_generate_messages_py"
	@echo "... rosgraph_msgs_generate_messages_cpp"
	@echo "... test"
	@echo "... edit_cache"
	@echo "... roscpp_generate_messages_eus"
	@echo "... rebuild_cache"
	@echo "... rosgraph_msgs_generate_messages_eus"
	@echo "... install/local"
	@echo "... gmock_main"
	@echo "... gmock"
	@echo "... gtest_main"
	@echo "... gtest"
	@echo "... src/Bundler.o"
	@echo "... src/Bundler.i"
	@echo "... src/Bundler.s"
	@echo "... src/DataLoader.o"
	@echo "... src/DataLoader.i"
	@echo "... src/DataLoader.s"
	@echo "... src/FeatureManager.o"
	@echo "... src/FeatureManager.i"
	@echo "... src/FeatureManager.s"
	@echo "... src/Frame.o"
	@echo "... src/Frame.i"
	@echo "... src/Frame.s"
	@echo "... src/Utils.o"
	@echo "... src/Utils.i"
	@echo "... src/Utils.s"
	@echo "... src/app/bundle_track_nocs.o"
	@echo "... src/app/bundle_track_nocs.i"
	@echo "... src/app/bundle_track_nocs.s"
	@echo "... src/app/bundle_track_ycbineoat.o"
	@echo "... src/app/bundle_track_ycbineoat.i"
	@echo "... src/app/bundle_track_ycbineoat.s"
	@echo "... src/cuda/CUDACache.o"
	@echo "... src/cuda/CUDACache.i"
	@echo "... src/cuda/CUDACache.s"
	@echo "... src/cuda/SBA.o"
	@echo "... src/cuda/SBA.i"
	@echo "... src/cuda/SBA.s"
	@echo "... src/cuda/SIFTImageManager.o"
	@echo "... src/cuda/SIFTImageManager.i"
	@echo "... src/cuda/SIFTImageManager.s"
	@echo "... src/cuda/Solver/CUDASolverBundling.o"
	@echo "... src/cuda/Solver/CUDASolverBundling.i"
	@echo "... src/cuda/Solver/CUDASolverBundling.s"
	@echo "... src/cuda/TimingLog.o"
	@echo "... src/cuda/TimingLog.i"
	@echo "... src/cuda/TimingLog.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

