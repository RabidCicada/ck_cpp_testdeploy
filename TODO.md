This TODO list is automatically generated from the cookiecutter-cpp-project template.
The following tasks need to be done to get a fully working project:


* Push to your remote repository for the first time by doing `git push origin main`.
* Make sure that the following software is installed on your computer:
  * A C++-11-compliant C++ compiler
  * CMake `>= 3.9`
  * The testing framework [Catch2](https://github.com/catchorg/Catch2)* The [PyBind11](https://github.com/pybind/pybind11) library
* Make sure that CI/CD pipelines are enabled in your Gitlab project settings and that
  there is a suitable Runner available. If you are using the cloud-hosted gitlab.com,
  this should already be taken care of.
* Update Issue templates in the .gitlab folder to fit this project
* Enable the integration of Readthedocs with your Git hoster. In the case of Github, this means
  that you need to login at [Read the Docs](https://readthedocs.org) and click the button
  *Import a Project*.
* Make sure that doxygen is installed on your system, e.g. by doing `sudo apt install doxygen`
  on Debian or Ubuntu.
* Edit the parameters of `setup()` in `setup.py` file to contain the necessary information
  about your project, such as your email adress, PyPI classifiers and a short project description.
* Head to your user settings at `https://pypi.org` and `https://test.pypi.org/` to setup PyPI trusted publishing.
  In order to do so, you have to head to the "Publishing" tab, scroll to the bottom
  and add a "new pending publisher". The relevant information is:
  * PyPI project name: `testcookiecuttercppproject`
  * Owner: `fakename`
  * Repository name: `test-cookiecutter-cpp-project`
  * Workflow name: `pypi.yml`
  * Environment name: not required
* Enable the integration with `codecov.io` by heading to the [Codecov.io Website](https://codecov.io),
  log in (e.g. with your Github credentials) and enable integration for your repository. This will
  allow you to have automatic coverage reports on pull requests, but is not necessary to display
  the coverage badge in the README.
* Enable the integration with `sonarcloud.io` by heading to the [Sonarcloud.io Website](https://sonarcloud.io),
  log in (e.g. with your Github credentials), add the repository and select *Github Actions* as the
  preferred method of integration. Follow step 1 and set up the secret variable `SONAR_TOKEN`. Step 2
  and 3 are already taken care of by this cookiecutter. In order to have the SonarCloud badge in the
  README show something meaningful, a *New Code Definition* needs to be configured in Sonarcloud under
  *Administration/New Code*.
