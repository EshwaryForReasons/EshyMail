cmake_minimum_required(VERSION 3.24.2)
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(eshymail VERSION 1.0)

find_package(PkgConfig REQUIRED)
pkg_check_modules(LIBCURL REQUIRED IMPORTED_TARGET libcurl)
pkg_check_modules(WEBKIT REQUIRED IMPORTED_TARGET webkit2gtk-4.0)
pkg_check_modules(GTK REQUIRED IMPORTED_TARGET gtk+-3.0)
pkg_check_modules(CAIRO REQUIRED IMPORTED_TARGET cairo)

set(BIN_NAME eshymail)
set(SOURCE_FILES main.cpp util.cpp ui.cpp composed_email.cpp email.cpp accounts.cpp)
list(TRANSFORM SOURCE_FILES PREPEND ${CMAKE_CURRENT_SOURCE_DIR}/source/)

add_executable(${BIN_NAME} ${SOURCE_FILES} third_party/webview.cpp)
target_include_directories(${BIN_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/third_party/ /usr/include/webkitgtk-4.0/)
target_link_libraries(${BIN_NAME} PRIVATE PkgConfig::LIBCURL PkgConfig::WEBKIT PkgConfig::GTK PkgConfig::CAIRO)