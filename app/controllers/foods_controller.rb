class FoodsController < ApplicationController
  def index
    @foods = Food.all
    render status: 200, json: @foods.to_json
  end
end
