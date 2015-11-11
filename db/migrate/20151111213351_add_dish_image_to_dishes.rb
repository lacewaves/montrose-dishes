class AddDishImageToDishes < ActiveRecord::Migration
  def change
    add_column :dishes, :dish_image_id, :string
  end
end
