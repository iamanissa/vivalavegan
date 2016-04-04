class FoodsController < ApplicationController

  def index
    @foods = Food.all
    render status: 200, json: @foods.to_json
  end

def show
  @food = Food.find(params[:id])
  render status: 200, json: @food.to_json
end

end
