FactoryGirl.define do
  factory :menu do
    name 'Happy Hour'
    association :restaurant
  end
end
