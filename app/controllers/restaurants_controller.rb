class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    # render status: 200, json: @restaurants.to_json
  end
end
