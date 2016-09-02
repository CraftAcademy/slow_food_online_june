json.restaurants @restaurants do |restaurant|
  json.id restaurant.id
  json.name restaurant.name
  json.address restaurant.address
  json.zip_code restaurant.zip_code
  json.city restaurant.city  
  json.latitude restaurant.latitude
  json.longitude restaurant.longitude
end
