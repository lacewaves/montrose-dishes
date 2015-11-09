class Dish < ActiveRecord::Base
  has_many :ingredients, through: :dish_ingredients
  has_many :dish_ingredients
  belongs_to :restaurant
end
