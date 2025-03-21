# UserStory/Task

This should be written by the ticket creator and updated by the team.

Summary of the Task nominally in UserStory form.  This should be descriptive as opposed to prescriptive.  It should describe the desired outcome/functionality and not HOW such functionality is implemented unless it is explicitly directed up front.

"As a [User/Entity], I would like to [Thing you want to do], so that [goal of task]"

# Description

This should be written by the ticket creator and updated by the team.

This should include literal candid description of possibilities, hints, and help for implementation that might have already formed during task creation and team discussion, if any, or that is simply already known to the team.

This could include:
- libraries to use
- coding strategies to implement
- direct requirements enforced by outside factors, like a customer High Level Design, or API written elswhere

# Acceptance Criteria

This should be created by the team or ticket creator when the ticket is scoped.

This should be a list of items that must exist or behaviors that must be present to be considered complete.

- [ ] Item 1
- [ ] Item 2
- [ ] Behavior 1

# Review

This section should be written by the ticket implementer.

It should include things that should be checked to validate things work.  Ideally it contains copy and paste like instructions such that a non-expert may validate things work.  Not every developer will be an SME in the same portion of code or functionality so it is critical to reduce friction for testing/review.  The reviewer is not limited to only using such instructions but such instructions provide a baseline from which the reviewer may proceed.

General Form:
- Validate feature or behavior
  - `command to run test suite that validates XYZ features`
  - What one should see as indicative of success

An Example:
- [ ] Validate gui now contains basic block graphing feature
  - `command to run gui`
  - click on `code_profile->run_analysis`
  - After some time passes (about 20 seconds per megabyte) it should present a graph of the basic blocks
