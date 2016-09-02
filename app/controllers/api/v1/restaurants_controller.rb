class Api::V1::RestaurantsController < Api::ApiController

  def index
    @restaurants = Restaurant.all
    render :'v1/restaurants/index'
  end

end
