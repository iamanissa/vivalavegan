class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    render status: 200, json: @restaurants.to_json
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    render status: 200, json: @restaurant.to_json
  end

  def api
    @restaurants = Restaurant.all
    render status: 200, json: @restaurants.to_json
  end

  def create
  @restaurant = Restaurant.create!(params[restaurant_params])
  render json: @restaurant, status: :ok
  end

  private
    def restaurant_params
      params.require(:restaurant).permit(:name, :info, :category, :photo_url, :gotchas)
    end

end
