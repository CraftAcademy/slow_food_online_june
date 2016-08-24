Then(/^I should see the input field "([^"]*)"$/) do |field|
  expect(page).to find_field field
end

Then(/^I should see the "([^"]*)" button$/) do |button|
  expect(page).to have_link_or_button button
end

Then(/^I should be on the "([^"]*)" page$/) do |expected_page|
  case expected_page
    when 'home' then
      path = root_path
    when 'create menu' then
      path = new_menu_path
    when 'signup' then
      path = new_user_registration_path
    when 'restaurants' then
      path = new_restaurant_path
  end
  expect(page.current_path).to eq path
end
