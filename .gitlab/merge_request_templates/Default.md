### Description
This merge request addresses, and describe the problem or user story being addressed.

### Changes Made
Provide code snippets or screenshots as needed.

### Related Issues
If MR opened through gitlab ui and named/linked appropriately already then remove this section, otherwise porovide links to the related issues or feature requests.

### Additional Notes
Include any extra information or considerations for reviewers, such as impacted areas of the codebase.

### Merge Request Checklists
- [ ] All pipelines/unit tests pass
- [ ] Tests for new functionality have been implemented
- [ ] Documentation has been updated, if relevant, to match new functionality

### Review

This section should be written by the ticket implementer.

It should include things that should be checked to validate things work.  Ideally it contains copy and paste like instructions such that a non-expert may validate things work.  Not every developer will be an SME in the same portion of code or functionality so it is critical to reduce friction for testing/review.  The reviewer is not limited to only using such instructions but such instructions provide a baseline from which the reviewer may proceed.

General Form:
- [ ] Validate feature or behavior
  - `command to run test suite that validates XYZ features`
  - What one should see as indicative of success

An Example:
- [ ] Validate gui now contains basic block graphing feature
  - `command to run gui`
  - click on `code_profile->run_analysis`
  - After some time passes (about 20 seconds per megabyte) it should present a graph of the basic blocks
