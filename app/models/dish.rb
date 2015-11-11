class Dish < ActiveRecord::Base
  has_many :ingredients, through: :dish_ingredients
  has_many :dish_ingredients
  belongs_to :restaurant

  include PgSearch

  pg_search_scope :search,
    against: [:name, :cuisine],
    using: {
      :tsearch => {:negation => true, :dictionary => "english"}
    },
    associated_against: {
      restaurant: [:name],
      ingredients: [:name, :food_group]
   }
end
