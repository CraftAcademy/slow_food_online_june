Feature: As a system user
  In order to display dishes to customers
  I need to be able to create a menu

  Scenario: Create a menu
    Given I am on the "create menu" page
    And I fill "Name" with "Lunch menu"
    And I click "Create"
    Then I should be on the "home" page

  Scenario: Reject when missing name value
    Given I am on the "create menu" page
    And I fill "Name" with ""
    And I click "Create"
    Then I should see "A name is required"
    And I should be on the "create menu" page

