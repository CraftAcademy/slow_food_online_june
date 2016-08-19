Given(/^I navigate to the "([^"]*)" page$/) do |path|
  visit root_path
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I should se an element "([^"]*)"$/) do |selector|
  expect(page).to have_css selector
end
