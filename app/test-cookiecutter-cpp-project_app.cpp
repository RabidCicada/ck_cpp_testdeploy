#include "test-cookiecutter-cpp-project/test-cookiecutter-cpp-project.hpp"
#include <iostream>

int
main()
{
  int result = testcookiecuttercppproject::add_one(1);
  std::cout << "1 + 1 = " << result << std::endl;
}
