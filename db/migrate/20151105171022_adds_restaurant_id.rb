class AddsRestaurantId < ActiveRecord::Migration
  def change
      add_column :dishes, :ingredient_id, :integer
  end
end
