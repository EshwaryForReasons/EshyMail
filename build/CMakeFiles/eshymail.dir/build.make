# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/eshy/EshyMail

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/eshy/EshyMail/build

# Include any dependencies generated for this target.
include CMakeFiles/eshymail.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/eshymail.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/eshymail.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/eshymail.dir/flags.make

CMakeFiles/eshymail.dir/source/main.cpp.o: CMakeFiles/eshymail.dir/flags.make
CMakeFiles/eshymail.dir/source/main.cpp.o: /home/eshy/EshyMail/source/main.cpp
CMakeFiles/eshymail.dir/source/main.cpp.o: CMakeFiles/eshymail.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/eshy/EshyMail/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/eshymail.dir/source/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/eshymail.dir/source/main.cpp.o -MF CMakeFiles/eshymail.dir/source/main.cpp.o.d -o CMakeFiles/eshymail.dir/source/main.cpp.o -c /home/eshy/EshyMail/source/main.cpp

CMakeFiles/eshymail.dir/source/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/eshymail.dir/source/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eshy/EshyMail/source/main.cpp > CMakeFiles/eshymail.dir/source/main.cpp.i

CMakeFiles/eshymail.dir/source/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/eshymail.dir/source/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eshy/EshyMail/source/main.cpp -o CMakeFiles/eshymail.dir/source/main.cpp.s

CMakeFiles/eshymail.dir/source/util.cpp.o: CMakeFiles/eshymail.dir/flags.make
CMakeFiles/eshymail.dir/source/util.cpp.o: /home/eshy/EshyMail/source/util.cpp
CMakeFiles/eshymail.dir/source/util.cpp.o: CMakeFiles/eshymail.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/eshy/EshyMail/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/eshymail.dir/source/util.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/eshymail.dir/source/util.cpp.o -MF CMakeFiles/eshymail.dir/source/util.cpp.o.d -o CMakeFiles/eshymail.dir/source/util.cpp.o -c /home/eshy/EshyMail/source/util.cpp

CMakeFiles/eshymail.dir/source/util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/eshymail.dir/source/util.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eshy/EshyMail/source/util.cpp > CMakeFiles/eshymail.dir/source/util.cpp.i

CMakeFiles/eshymail.dir/source/util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/eshymail.dir/source/util.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eshy/EshyMail/source/util.cpp -o CMakeFiles/eshymail.dir/source/util.cpp.s

CMakeFiles/eshymail.dir/source/ui.cpp.o: CMakeFiles/eshymail.dir/flags.make
CMakeFiles/eshymail.dir/source/ui.cpp.o: /home/eshy/EshyMail/source/ui.cpp
CMakeFiles/eshymail.dir/source/ui.cpp.o: CMakeFiles/eshymail.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/eshy/EshyMail/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/eshymail.dir/source/ui.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/eshymail.dir/source/ui.cpp.o -MF CMakeFiles/eshymail.dir/source/ui.cpp.o.d -o CMakeFiles/eshymail.dir/source/ui.cpp.o -c /home/eshy/EshyMail/source/ui.cpp

CMakeFiles/eshymail.dir/source/ui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/eshymail.dir/source/ui.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eshy/EshyMail/source/ui.cpp > CMakeFiles/eshymail.dir/source/ui.cpp.i

CMakeFiles/eshymail.dir/source/ui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/eshymail.dir/source/ui.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eshy/EshyMail/source/ui.cpp -o CMakeFiles/eshymail.dir/source/ui.cpp.s

CMakeFiles/eshymail.dir/source/composed_email.cpp.o: CMakeFiles/eshymail.dir/flags.make
CMakeFiles/eshymail.dir/source/composed_email.cpp.o: /home/eshy/EshyMail/source/composed_email.cpp
CMakeFiles/eshymail.dir/source/composed_email.cpp.o: CMakeFiles/eshymail.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/eshy/EshyMail/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/eshymail.dir/source/composed_email.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/eshymail.dir/source/composed_email.cpp.o -MF CMakeFiles/eshymail.dir/source/composed_email.cpp.o.d -o CMakeFiles/eshymail.dir/source/composed_email.cpp.o -c /home/eshy/EshyMail/source/composed_email.cpp

CMakeFiles/eshymail.dir/source/composed_email.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/eshymail.dir/source/composed_email.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eshy/EshyMail/source/composed_email.cpp > CMakeFiles/eshymail.dir/source/composed_email.cpp.i

CMakeFiles/eshymail.dir/source/composed_email.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/eshymail.dir/source/composed_email.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eshy/EshyMail/source/composed_email.cpp -o CMakeFiles/eshymail.dir/source/composed_email.cpp.s

CMakeFiles/eshymail.dir/source/email.cpp.o: CMakeFiles/eshymail.dir/flags.make
CMakeFiles/eshymail.dir/source/email.cpp.o: /home/eshy/EshyMail/source/email.cpp
CMakeFiles/eshymail.dir/source/email.cpp.o: CMakeFiles/eshymail.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/eshy/EshyMail/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/eshymail.dir/source/email.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/eshymail.dir/source/email.cpp.o -MF CMakeFiles/eshymail.dir/source/email.cpp.o.d -o CMakeFiles/eshymail.dir/source/email.cpp.o -c /home/eshy/EshyMail/source/email.cpp

CMakeFiles/eshymail.dir/source/email.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/eshymail.dir/source/email.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eshy/EshyMail/source/email.cpp > CMakeFiles/eshymail.dir/source/email.cpp.i

CMakeFiles/eshymail.dir/source/email.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/eshymail.dir/source/email.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eshy/EshyMail/source/email.cpp -o CMakeFiles/eshymail.dir/source/email.cpp.s

CMakeFiles/eshymail.dir/source/accounts.cpp.o: CMakeFiles/eshymail.dir/flags.make
CMakeFiles/eshymail.dir/source/accounts.cpp.o: /home/eshy/EshyMail/source/accounts.cpp
CMakeFiles/eshymail.dir/source/accounts.cpp.o: CMakeFiles/eshymail.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/eshy/EshyMail/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/eshymail.dir/source/accounts.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/eshymail.dir/source/accounts.cpp.o -MF CMakeFiles/eshymail.dir/source/accounts.cpp.o.d -o CMakeFiles/eshymail.dir/source/accounts.cpp.o -c /home/eshy/EshyMail/source/accounts.cpp

CMakeFiles/eshymail.dir/source/accounts.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/eshymail.dir/source/accounts.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eshy/EshyMail/source/accounts.cpp > CMakeFiles/eshymail.dir/source/accounts.cpp.i

CMakeFiles/eshymail.dir/source/accounts.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/eshymail.dir/source/accounts.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eshy/EshyMail/source/accounts.cpp -o CMakeFiles/eshymail.dir/source/accounts.cpp.s

CMakeFiles/eshymail.dir/third_party/webview.cpp.o: CMakeFiles/eshymail.dir/flags.make
CMakeFiles/eshymail.dir/third_party/webview.cpp.o: /home/eshy/EshyMail/third_party/webview.cpp
CMakeFiles/eshymail.dir/third_party/webview.cpp.o: CMakeFiles/eshymail.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/eshy/EshyMail/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/eshymail.dir/third_party/webview.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/eshymail.dir/third_party/webview.cpp.o -MF CMakeFiles/eshymail.dir/third_party/webview.cpp.o.d -o CMakeFiles/eshymail.dir/third_party/webview.cpp.o -c /home/eshy/EshyMail/third_party/webview.cpp

CMakeFiles/eshymail.dir/third_party/webview.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/eshymail.dir/third_party/webview.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eshy/EshyMail/third_party/webview.cpp > CMakeFiles/eshymail.dir/third_party/webview.cpp.i

CMakeFiles/eshymail.dir/third_party/webview.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/eshymail.dir/third_party/webview.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eshy/EshyMail/third_party/webview.cpp -o CMakeFiles/eshymail.dir/third_party/webview.cpp.s

# Object files for target eshymail
eshymail_OBJECTS = \
"CMakeFiles/eshymail.dir/source/main.cpp.o" \
"CMakeFiles/eshymail.dir/source/util.cpp.o" \
"CMakeFiles/eshymail.dir/source/ui.cpp.o" \
"CMakeFiles/eshymail.dir/source/composed_email.cpp.o" \
"CMakeFiles/eshymail.dir/source/email.cpp.o" \
"CMakeFiles/eshymail.dir/source/accounts.cpp.o" \
"CMakeFiles/eshymail.dir/third_party/webview.cpp.o"

# External object files for target eshymail
eshymail_EXTERNAL_OBJECTS =

eshymail: CMakeFiles/eshymail.dir/source/main.cpp.o
eshymail: CMakeFiles/eshymail.dir/source/util.cpp.o
eshymail: CMakeFiles/eshymail.dir/source/ui.cpp.o
eshymail: CMakeFiles/eshymail.dir/source/composed_email.cpp.o
eshymail: CMakeFiles/eshymail.dir/source/email.cpp.o
eshymail: CMakeFiles/eshymail.dir/source/accounts.cpp.o
eshymail: CMakeFiles/eshymail.dir/third_party/webview.cpp.o
eshymail: CMakeFiles/eshymail.dir/build.make
eshymail: /usr/lib/libcurl.so
eshymail: /usr/lib/libwebkit2gtk-4.0.so
eshymail: /usr/lib/libsoup-2.4.so
eshymail: /usr/lib/libgmodule-2.0.so
eshymail: /usr/lib/libjavascriptcoregtk-4.0.so
eshymail: /usr/lib/libgtk-3.so
eshymail: /usr/lib/libgdk-3.so
eshymail: /usr/lib/libz.so
eshymail: /usr/lib/libpangocairo-1.0.so
eshymail: /usr/lib/libpango-1.0.so
eshymail: /usr/lib/libharfbuzz.so
eshymail: /usr/lib/libatk-1.0.so
eshymail: /usr/lib/libcairo-gobject.so
eshymail: /usr/lib/libgdk_pixbuf-2.0.so
eshymail: /usr/lib/libgio-2.0.so
eshymail: /usr/lib/libgobject-2.0.so
eshymail: /usr/lib/libglib-2.0.so
eshymail: /usr/lib/libcairo.so
eshymail: CMakeFiles/eshymail.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/eshy/EshyMail/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable eshymail"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/eshymail.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/eshymail.dir/build: eshymail
.PHONY : CMakeFiles/eshymail.dir/build

CMakeFiles/eshymail.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/eshymail.dir/cmake_clean.cmake
.PHONY : CMakeFiles/eshymail.dir/clean

CMakeFiles/eshymail.dir/depend:
	cd /home/eshy/EshyMail/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eshy/EshyMail /home/eshy/EshyMail /home/eshy/EshyMail/build /home/eshy/EshyMail/build /home/eshy/EshyMail/build/CMakeFiles/eshymail.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/eshymail.dir/depend

