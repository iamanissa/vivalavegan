class FoodsController < ApplicationController

  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @foods = @restaurant.foods
    render status: 200, json: @foods.to_json
  end

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    @foods = @restaurant.foods
    render status: 200, json: @foods.to_json
  end

  def all
    @foods = Food.all
    render status: 200, json: @foods.to_json
  end

end
