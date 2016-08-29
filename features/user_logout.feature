Feature: As any user
  In order to protect my account
  I need to be able to logout

  Background:
    Given I am logged in as a user of the system
    And I am on the "home" page

  Scenario: Logout a user
    And I click on "Logout"
    Then I should see "Signed out successfully."

  Scenario: Greeting the user when logged in
    Then I should see "Hello, admin@random.com"
