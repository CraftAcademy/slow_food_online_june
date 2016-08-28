class DashboardController < ApplicationController
  before_action :authenticate_user!

  def show
    @restaurant = current_user.restaurants.first
  end
end
