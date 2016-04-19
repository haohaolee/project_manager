Feature: Restricting project access
  In order to keep a project private
  As the project's owner
  I only want team members to access the project


  Scenario: Accessing a project that I'm not team member of
    Given I'm signed up as "NSA"
    When I try to access another user's project
    Then I should not see the project
