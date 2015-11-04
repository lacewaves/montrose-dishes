class CreateIngredients < ActiveRecord::Migration

  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :food_group
      t.string :dishes

      t.timestamps null: false
    end
  end
end
