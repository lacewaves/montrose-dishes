class IngredientController < ApplicationController

  def index
    @ingredients_collection = Ingredient.order("name asc")
  end

  def detail
    @ingredient = Ingredient.find params[:id]
  end

  def create
    @ingredient = Ingredient.new params.require(:ingredient).permit(:name, :food_group)
    if @ingredient.save
      redirect_to root_path
    else
      render :new
    end
  end

  def new
    @ingredient = Ingredient.new
  end

  def edit
    @ingredient = Ingredient.find params[:id]
  end

end
