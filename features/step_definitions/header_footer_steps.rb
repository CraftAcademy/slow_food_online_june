Given(/^I am on the "([^"]*)" page$/) do |arg1|
  expect(page.current_path).to eq root_path
end

Then(/^I should see a "([^"]*)" link$/) do |link|
  click_link_or_button link
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end
