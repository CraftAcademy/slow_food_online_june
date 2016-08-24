FactoryGirl.define do
  factory :restaurant do
    name 'Ching'
    address 'Main Street'
    zip_code '12345'
    delivery_radius '5km'
    phone_number '0123456789'
    email_address 'something@random.com'
    description 'Great asian food'
    cuisine 'Chinese'
  end
end
