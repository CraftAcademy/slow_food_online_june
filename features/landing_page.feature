@javascript
Feature: As a visitor
  So that I can order some food
  I want to see a selection of restaurants nearby and food categories

  Scenario: Viewing the landing page
    Given I navigate to the "home" page
    Then I should see "What do you feel like tonight?"
    And I should see "List of restaurants"
    And I should see an element "#map"
    And I should see "Asian"
    And I should see an element "#location_form"
    And I should see a Google Map
