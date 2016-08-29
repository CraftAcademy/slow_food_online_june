Given(/^the following restaurant exists$/) do |table|
  table.hashes.each do |restaurant|
    FactoryGirl.create(:restaurant, restaurant)
  end
end

Given(/^I am on the "([^"]*)" page for "([^"]*)"$/) do |page, name|
  restaurant = Restaurant.find_by(name: name)

  case page
    when 'edit'
      visit edit_restaurant_path(restaurant)
    when 'dashboard'
      visit dashboard_path(restaurant)
    when 'create menu'
      visit new_menu_path
  end

end

Then(/^I should be on the "([^"]*)" page for "([^"]*)"$/) do |page, name|
  restaurant = Restaurant.find_by(name: name)
  case page
    when 'edit'
      expect(current_path).to eq edit_restaurant_path(restaurant)
    when 'dashboard'
      expect(current_path).to eq dashboard_path(restaurant)
  end

end
