Feature: Managing projects
  In order to keep my projects organized
  As a messy dude
  I want to manage my projects


  Scenario: Placeholder for projects without name
    Given I'm signed up as "Hao Li"
    When I create a project without a name
    Then the project should be called "Hao Li's project"
