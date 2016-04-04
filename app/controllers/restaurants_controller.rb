class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    render status: 200, json: @restaurants.to_json
  end

  def show

    @restaurant = Restaurant.find(params[:restaurant_id])
    render status: 200, json: @restaurant.to_json

  end



  def api
    @restaurants = Restaurant.all
    render status: 200, json: @restaurants.to_json
  end

end
