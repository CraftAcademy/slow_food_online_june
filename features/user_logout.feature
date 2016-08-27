Feature: As any user
  In order to protect my account
  I need to be able to logout

  Scenario: Logout a user
    Given I am on the "home" page
    And I am logged in as a user of the system
    Then show me the page
    And I click on "Logout"
    Then show me the page
