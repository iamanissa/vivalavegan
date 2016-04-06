class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    render status: 200, json: @restaurants.to_json
  end

  def show
    # @restaurant = Restaurant.find(params[:id])
    render status: 200, json: @restaurant.to_json
  end

  def api
    @restaurants = Restaurant.all
    render status: 200, json: @restaurants.to_json
  end

  def create
    @restaurant = Restaurant.create!(restaurant_params)
    render json: @restaurant, status: :ok
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update!(restaurant_params)
    render json: @restaurant, status: :ok
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    render json: {success: true}, status: :ok
  end

  private
  def restaurant_params
    params.permit(:name, :info, :category, :photo_url, :gotchas)
  end

end
