add_executable(test-cookiecutter-cpp-project_app
               test-cookiecutter-cpp-project_app.cpp)
target_link_libraries(test-cookiecutter-cpp-project_app
                      PRIVATE test-cookiecutter-cpp-project)
