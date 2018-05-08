**Royal Mail Automation Tests**

_Personal_ hobby project, involving playing with some basic automation tests for Royal Mail's website, 
using RSpec and Watir framework; combined with the 'parallel-tests' gem to parallelise the test run.

**To run the test suite:**

Prerequisites: Requires Ruby.

1- Clone the repository locally.

2- Set the test browser in the 'config.yaml' file. It supports chrome, ie and firefox. I have tested this successfully
only on Chrome so far.

3- Finally, in the project root, execute command 'bundle exec rake parallel:spec' to fetch ruby gems
and execute the 2 tests in parallel.
