# Blake St. Apts

## Background

This repository was created as a starter project for students to implement user stories.

Blake Street Apartments is a fictional apartment co-op building. `Units` have `owners`, and some `owners` have more than own `unit`. Each `owner` rents their apartment out to a `renter`. Not all units need currently have a `renter`. `renters` can only be created for an existing `unit`.

As outlined below, some user stories have been implemented by instructors. Others will have been left for the student to implement. Students need not build user stories in order, but later user stories may build upon earlier stories. If you complete a later user story it might be the case that you will also build out some or all of the functionality from an earlier user story. **Please use tests to drive development. We expect a commit with a test before any implementation of a feature, and a separate commit once the feature has been implemented.**

If you have questions regarding these stories, please reach out over Slack. If you want to discuss other potential user stories for additional practice, please reach out over Slack.

# Blake St. Apts User Stories

## Instructor Stories (Already Implemented)

### Story 1

* When I visit `/units`
* I see a list of units

### Story 2

* When I visit `/renters`
* I see a list of renters
* with the unit that they rent

### Story 3

* When I visit `/owners`
* I see a list of owners
* with a list of the units that they own

### Existing Relationships

#### Owners and Units

* owners has_many units
* units belong_to owners

#### Units and Renters
* units belong_to renters
* renters has_one unit

## Student Stories (To Be Implemented)

### Story 1

* When I visit `/units`
* I see a list of units
* with their square footage
* their monthly rent
* and their cost per square foot

### Story 2

* When I visit `/owners`
* I see a list of owners
* with a list of the units that they own
* if I click on an owner's name
* then I see a page with the owner's name
* and a list of the units they own
* with the monthly rent for each unit
* And the total monthly rent that the owner expects to collect if all of their apartments are rented and the renters are paying

### Story 3

* When I visit `/renters`
* I see a list of renters
* their monthly rent
* the cost per square foot that they pay
* and the average cost per square foot for all renters
