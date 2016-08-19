Given(/^I am on the "([^"]*)" page$/) do |path|
  visit root_path
end

Then(/^I should see a "([^"]*)" link$/) do |link|
  click_link_or_button link
end
