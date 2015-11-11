class DishesController < ApplicationController
  def index
    @dishes_collection = Dish.order("upvotes desc")

    if params[:search_text].present?
      @dishes_collection = @dishes_collection.search params[:search_text]
    end
  end

  def detail
    @dish = Dish.find params[:id]
  end

  def new
    @dish = Dish.new
    @restaurants = Restaurant.all
  end

  def create
    @dish = Dish.new params.require(:dish).permit(:restaurant_id, :name, :cuisine, :dish_type, :kosher, :halal, :meat, :fish, :shellfish, :vegetarian, :vegan, :dairy, :gluten, :nuts, :soy, :spicy, :ingredient_ids => [])
    if @dish.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @dish = Dish.find params[:id]
  end

  def update
    @dish = Dish.find params[:id]
    if @dish.update params.require(:dish).permit(:name, :cuisine, :dish_type, :kosher, :halal, :meat, :fish, :shellfish, :vegetarian, :vegan, :dairy, :gluten, :nuts, :soy, :spicy, :ingredient_ids => [])
      redirect_to root_path
    else
      render :edit
    end
  end

  def delete
    @dish = Dish.find params[:id]
    @dish.destroy
    redirect_to rooth_path
  end

  def upvote
    @dish = Dish.find params[:id]
    @dish.update_attribute(:upvotes, @dish.upvotes + 1)
    redirect_to(root_path)
  end

end

#...For Posterity...
# @dishes_collection = dishes.map do |d|
#   # d is an ActiveRecord Model Instance...(we can't use Ruby's merge)
#   # so let's convert to json
#   puts "----Restaurant Info-----"
#   pp d.restaurant.name
#   pp d.restaurant.placeId
#   pp "======================="
#
#   d_Hash = d.as_json
#
#   d_Hash.merge!({
#     "restaurant" => {
#       "name" => d.restaurant.name,
#       "placeId" => d.restaurant.placeId
#     },
#     "ingredientList" => []
#   })
#
#   d.dish_ingredients.each do |d_i|
#     pp d_i.id
#     ingredient = Ingredient.find_by(id: d_i.id)
#     puts "----Printing Ingredient-----"
#     pp ingredient[:name]
#     d_Hash["ingredientList"].push(ingredient[:name])
#
#   end
#   puts "\n"*10
#   puts "------the dish?--------"
#   pp d_Hash
#   d_Hash
# end

# SOLUTION:
#  // the through-model-reference  must be a plural noun!
#   (:dish_ingredients  NOT :dish_ingredient)
#   has_many :dishes, through: :dish_ingredients
