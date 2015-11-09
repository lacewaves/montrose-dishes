class Removeingredientid < ActiveRecord::Migration
  def change
    remove_column :dishes, :ingredient_id, :integer
  end
end
