Feature: As any user
  In order to protect my account
  I need to be able to logout

  Scenario: Logout a user
    Given I am logged in as a user of the system
    And I am on the "home" page
    And I click on "Logout"
    Then I should see "Signed out successfully."
