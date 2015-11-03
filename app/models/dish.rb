class Dish < ActiveRecord::Base
  has_many :ingredients
  belongs_to :restaurant
end
