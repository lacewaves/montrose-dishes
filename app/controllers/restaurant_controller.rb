class RestaurantController < ApplicationController
  def index
    @restaurants_collection = Restaurant.order("name asc")
  end

  def detail
    @restaurant = Restaurant.find params[:id]
  end

  def create
    @restaurant = Restaurant.new params.require(:restaurant).permit(:name, :placeId, :cuisine)
    if @restaurant.save
      redirect_to root_path
    else
      render :new
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
    @restaurant = Restaurant.find params[:id]
  end
end
