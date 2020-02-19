class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: %i[show edit]
  def top
    @restaurants = Restaurant.where(stars: 5)
  end

  def index
    @restaurants = Restaurant.all
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def new
    @restaurant = Restaurant.new
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
