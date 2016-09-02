require 'rails_helper'

RSpec.describe 'Api::V1::RestaurantsController', type: :request do
  let!(:restaurant_1) {FactoryGirl.create(:restaurant, name: 'Mikey', address: 'Main Street 224', zip_code: '12345', city: 'Skurup')}
  let!(:restaurant_2) {FactoryGirl.create(:restaurant, name: 'Thomas')}

  describe 'GET /v1/restaurants' do
    it 'should return information about restaurants' do
      get '/api/v1/restaurants.json'
      expected_response = {"restaurants": [
                              {
                                "id": restaurant_1.id,
                                "name": "Mikey",
                                "address": "Main Street 224",
                                "zip_code": "12345",
                                "city": "Skurup",
                                "latitude": nil,
                                "longitude": nil
                              },
                              {
                                "id": restaurant_2.id,
                                "name": "Thomas",
                                "address": restaurant_2.address,
                                "zip_code": restaurant_2.zip_code,
                                "city": restaurant_2.city,
                                "latitude": nil,
                                "longitude": nil
                              }]
                          }
      json_response = JSON.parse(response.body)
      expect(json_response).to eq expected_response.as_json
    end

    it 'should return a list of restaurants' do
      get '/api/v1/restaurants.json'
      json_response = JSON.parse(response.body)
      expect(json_response['restaurants'].size).to eq(2)
    end
  end
end
