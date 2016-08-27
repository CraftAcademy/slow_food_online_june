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
<<<<<<< HEAD
<<<<<<< HEAD
    when 'create dish' then
      path = new_dish_path
=======
    else
      raise 'You have not defined a path yet'
>>>>>>> 013f8711f26c35868dd10648b375a46674adcabb
=======
    when 'create dish' then
      path = new_menu_dish_path(@menu)
    else
      raise 'You have not defined a path yet'
>>>>>>> 1cd77e256a9aac9b8d57f901fcec734b334acb9b
  end
  expect(page.current_path).to eq path
end


Given(/^that following menus exist$/) do |table|
  table.hashes.each do |menu|
    FactoryGirl.create(:menu, menu)
  end
end