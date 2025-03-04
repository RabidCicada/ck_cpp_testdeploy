cmake_minimum_required(VERSION 3.9)

# Set a name and a version number for your project:
project(
  test-cookiecutter-cpp-project
  VERSION 0.0.1
  LANGUAGES CXX)

# Initialize some default paths
include(GNUInstallDirs)

# Define the minimum C++ standard that is required
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_POSITION_INDEPENDENT_CODE ON)

# Compilation options
option(BUILD_PYTHON "Enable building of Python bindings" ON)
option(BUILD_DOCS "Enable building of documentation" ON)

# Add an interface target for our header-only library
add_library(test-cookiecutter-cpp-project INTERFACE)
target_include_directories(
  test-cookiecutter-cpp-project
  INTERFACE $<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/include/>
            $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>)

# compile the application
add_subdirectory(app)

# compile the tests
include(CTest)
if(BUILD_TESTING)
  find_package(Catch2 REQUIRED)
  include(Catch)
  add_subdirectory(tests)
endif()

if(BUILD_DOCS)
  # Add the documentation
  add_subdirectory(doc)
endif()
if(BUILD_PYTHON)
  # Tell pybind11 to use modern finding logic
  set(PYBIND11_FINDPYTHON ON)
  # Add Python bindings
  find_package(pybind11)
  # Compile the Pybind11 module
  pybind11_add_module(
    _testcookiecuttercppproject
    python/testcookiecuttercppproject/_test-cookiecutter-cpp-project.cpp)
  target_link_libraries(_testcookiecuttercppproject
                        PUBLIC test-cookiecutter-cpp-project)

  # Install the Python module shared library
  install(TARGETS _testcookiecuttercppproject DESTINATION .)
endif()

# Add an alias target for use if this project is included as a subproject in
# another project
add_library(test-cookiecutter-cpp-project::test-cookiecutter-cpp-project ALIAS
            test-cookiecutter-cpp-project)

# Install targets and configuration
install(
  TARGETS test-cookiecutter-cpp-project
  EXPORT test-cookiecutter-cpp-project-config
  RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
  LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
  ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR})

install(
  EXPORT test-cookiecutter-cpp-project-config
  NAMESPACE test-cookiecutter-cpp-project::
  DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/test-cookiecutter-cpp-project)

install(DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/include/
        DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})

# This prints a summary of found dependencies
include(FeatureSummary)
feature_summary(WHAT ALL)
