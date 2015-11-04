class DishesController < ApplicationController
  def index
    @dishes = Dish.all
  end

  def create
    @dish = Dish.new params.require(:dish).permit(:name, :cuisine, :type, :kosher, :halal, :meat, :fish, :shellfish, :vegetarian, :vegan, :dairy, :gluten, :nuts, :soy, :spicy)
        if @dish.save
          redirect_to root_path
        else
          render :new
        end
  end

  def show
    @dish = Dish.find params[:id]
  end

  def new
    @dish = Dish.new
  end

  def edit
    @dish = Dish.find params[:id]
  end

  def update
    @dish = Dish.find params[:id]
    if @dish.update params.require(:dish).permit(:name, :cuisine, :type, :kosher, :halal, :meat, :fish, :shellfish, :vegetarian, :vegan, :dairy, :gluten, :nuts, :soy, :spicy)
    redirect_to root_path
  else
    render :edit
  end
  end
end
