Feature: As a system user
  In order to keep information about my restaurant up to date
  I would like to be able to edit my restaurant's details

  Background:
    Given I am logged in as a user of the system
    And the following restaurant exists
    | name    |
    | Mikey's |

    And I am on the "edit" page for "Mikey's"

  Scenario: Updating the address
    And I fill in "Address" with "Holtermansgatan 10"
    And I select "5km" from "Delivery radius"
    And I select "Italian" from "Select your cuisine"
    And I click on the "Save" button
    Then I should be on the "home" page
    And I should see "Information successfully updated"

  Scenario: Updating with an empty field
    And I fill in "Zip code" with ""
    And I click on the "Save" button
    And I should see "Encountered errors while updating: Zip code can't be blank"
    Then I should be on the "edit" page for "Mikey's"
