Feature: As an Administrator
  In order to display the same content across multiple pages
  I want to have that content in a footer and a header

  Scenario: Visiting the home page
  Given I am on the "home" page
  Then I should see a "Home" link
  And I should see a "Login" link
  And I should see a "Sign up" link
  And I should see "Slow Food Online"
  And I should see "Copyright"
  And I should see a "Site Map" link
  And I should see a "Contacts" link
