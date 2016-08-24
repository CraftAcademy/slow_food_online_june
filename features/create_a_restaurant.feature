Feature: As a System user
  In order to get clients
  I want to be able to add my restaurant's information

  Background:
    Given I am logged in as a user of the system
    Given I am on the "restaurants" page

  Scenario: Successfully create a restaurant
    And I fill in "Name" with "My Restaurant"
    And I fill in "Address" with "Main Stree 1"
    And I fill in "Zip code" with "90210"
    And I select "5km" from "Delivery radius"
    And I fill in "Phone number" with "031-123456"
    And I fill in "Email address" with "restaurant@random.com"
    And I fill in "Description" with "Lorem ipsum..."
    And I select "Italian" from "Select your cuisine"
    And I click on "Save"
    Then I should be on the "home" page

  Scenario: Restaurant create page fields not filled in
    Given I am on the "restaurants" page
    And I fill in "Name" with ""
    And I fill in "Address" with ""
    And I fill in "Zip code" with ""
    And I select "5km" from "Delivery radius"
    And I fill in "Phone number" with ""
    And I fill in "Email address" with ""
    And I fill in "Description" with ""
    And I select "Italian" from "Select your cuisine"
    And I click on the "Save" button
    Then I should see:
      | message                      |
      | Name can't be blank          |
      | Address can't be blank       |
      | Zip code can't be blank      |
      | Phone number can't be blank  |
      | Email address can't be blank |
      | Description can't be blank   |
