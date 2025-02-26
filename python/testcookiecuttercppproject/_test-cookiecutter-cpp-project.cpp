#include <pybind11/pybind11.h>
#include <pybind11/stl.h>

#include "test-cookiecutter-cpp-project/test-cookiecutter-cpp-project.hpp"

namespace py = pybind11;

namespace testcookiecuttercppproject {

PYBIND11_MODULE(_testcookiecuttercppproject, m)
{
  m.doc() = "Python Bindings for My C++ Project";
  m.def("add_one", &add_one, "Increments an integer value");
}

} // namespace testcookiecuttercppproject
