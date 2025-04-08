add_executable(tests test-cookiecutter-cpp-project_t.cpp)
target_link_libraries(tests PUBLIC test-cookiecutter-cpp-project
                                   Catch2::Catch2WithMain)

# allow user to run tests with `make test` or `ctest`
catch_discover_tests(tests)
