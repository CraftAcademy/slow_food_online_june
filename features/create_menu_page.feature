Feature: As a system user
  In order to display dishes to customers
  I need to be able to create a menu

  Background:
    Given I am logged in as a user of the system
    And I have a restaurant called "Mikey's"
    And I am on the "create menu" page for "Mikey's"

  Scenario: Create a menu
    And I fill "Name" with "Lunch menu"
    And I click "Create"
    Then I should be on the "create dish" page

  Scenario: Reject when missing name value
    And I fill "Name" with ""
    And I click "Create"
    Then I should see "A name is required"
    And I should be on the "create menu" page
