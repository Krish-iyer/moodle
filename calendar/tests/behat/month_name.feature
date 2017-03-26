@core @core_calendar @javascript
Feature: Perform basic calendar functionality
  To ensure that month of the calendar always comes above days
  As an admin
  I need to add a calendar block to the course
  And I need to interact with the calendar

  Background:
    Given the following "users" exist:
      | username | firstname | lastname | email |
      | student1 | Student | 1 | student1@example.com |
      | student2 | Student | 2 | student2@example.com |
      | student3 | Student | 3 | student3@example.com |
    And the following "courses" exist:
      | fullname | shortname | format |
      | Course 1 | C1 | topics |
    When I log in as "admin"
    And I am on site homepage
    And I follow "Course 1"
    And I turn editing mode on
    And I add the "Calendar" block

  Scenario: I view calendar details for a future event
    Given I follow "C1"
    And I follow "This month"
