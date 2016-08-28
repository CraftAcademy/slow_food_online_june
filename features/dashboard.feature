@javascript
Feature: As a system user
  So that I can manage my restaurant
  I want to be able to access a restaurant dashboard

  Background:
    Given I am logged in as a user of the system
    And I have a restaurant called "Mikey's"
    And that following menus exist
      | name  |
      | Lunch |
    And I am on the "dashboard" page for "Mikey's"

  Scenario: Navigating to create menu page
    And I click on "Create a menu"
    Then I should be on the "create menu" page

  Scenario: Navigating to edit details page
    And I click on "Edit details"
    Then I should be on the "edit" page for "Mikey's"

  Scenario: Navigating to create menu page
    And I click on "Add dish to Lunch"
    Then I should be on the "create dish" page

  Scenario: Restrict access to logged in users
    Given I am logged out
    And I am on the "dashboard" page for "Mikey's"
    Then I should see "You need to sign in or sign up before continuing"
