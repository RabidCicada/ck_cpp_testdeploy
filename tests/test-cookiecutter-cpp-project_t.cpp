#include "catch2/catch_all.hpp"
#include "test-cookiecutter-cpp-project/test-cookiecutter-cpp-project.hpp"

using namespace testcookiecuttercppproject;

TEST_CASE("add_one", "[adder]")
{
  REQUIRE(add_one(0) == 1);
  REQUIRE(add_one(123) == 124);
  REQUIRE(add_one(-1) == 0);
}
