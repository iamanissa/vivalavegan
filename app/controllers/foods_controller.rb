class FoodsController < ApplicationController

  def index

    # @foods = Food.all
    # render status: 200, json: @foods.to_json

    @restaurant = Restaurant.find(params[:restaurant_id])
    @foods = @restaurant.foods
    render status: 200, json: @foods.to_json
  end

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    @foods = @restaurant.foods
    render status: 200, json: @foods.to_json
  end

end
