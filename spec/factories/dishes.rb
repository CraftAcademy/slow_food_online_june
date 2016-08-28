FactoryGirl.define do
  factory :dish do
    name 'Meatballs'
    description 'Lorem ipsum....'
    price 20
    allergy_info 'Onion'
    ingredients 'Meat'
    calories '500'
    category 'Starter'
    association :menu
  end
end
