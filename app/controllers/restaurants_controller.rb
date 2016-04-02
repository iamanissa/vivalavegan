class RestaurantsController < ApplicationController

  def index

  end

  def api
    @restaurants = Restaurant.all
    render status: 200, json: @restaurants.to_json
  end

end
