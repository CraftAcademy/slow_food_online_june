Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I should see an element "([^"]*)"$/) do |selector|
  expect(page).to have_css selector
end


And(/^I should see a Google Map$/) do
  loop until all(:css, '#map .gm-style').length == 1
  expect(page).to have_css '.gm-style'
end


And(/^I fill "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in field, with: value
end
