Then(/^Show me the page$/) do
  save_and_open_page
end

Then(/^I should see the field "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I should see all the fields$/) do
  steps %q{
   Then I should see the field "Restaurant name"
   Then I should see the field "Restaurant address"
   Then I should see the field "Zip code"
   Then I should see the field "Delivery radius"
   Then I should see the field "Public phone number"
   Then I should see the field "Owner name"
   Then I should see the field "Owner address"
   Then I should see the field "Private phone number"
   Then I should see the field "Email address"
   Then I should see the field "Restaurant description"
   Then I should see the field "Select your cuisine"
 }
end

Then(/^I should see a "([^"]*)" button$/) do |button|
  expect(page).to have_button button
end

Then(/^I click on the "([^"]*)" button$/) do |button|
  click_link_or_button button
end

Then(/^I fill in all the fields$/) do
  steps %q{
    And I will fill in "Restaurant name" with "Ciao Baby"
    And I will fill in "Restaurant address" with "15 Italy Drive, Milan"
    And I will fill in "Zip code" with "0025 "
    Then the "Delivery radius" drop-down should contain the option "5km"
    And I will fill in "Public phone number" with "555-555555"
    And I will fill in "Owner name" with "Joe Soap"
    And I will fill in "Owner address" with "25 Italy Drive, Milan"
    And I will fill in "Private phone number" with "555-555556"
    And I will fill in "Email address" with "owner@gmail.com"
    And I will fill in "Restaurant description" with "Italian food just like your Mama's"
    Then the "Select your cuisine" drop-down should contain the option "Italian"}
end

Then(/^the "([^"]*)" drop\-down should contain the option "([^"]*)"$/) do |id, value|
  select(value, from: id)
end


And(/^I select "([^"]*)" from "([^"]*)"$/) do |option, select_field|
  select option, from: select_field
end

Then(/^I should see:$/) do |table|
  table.hashes.each do |hash|
    expect(page).to have_content hash[:message]
  end
end