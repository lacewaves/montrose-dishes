class CreateDishes < ActiveRecord::Migration

  def change
    create_table :dishes do |t|
      t.belongs_to :restaurant, index:true
      t.string :name
      t.string :cuisine
      t.string :dish_type
      t.integer :upvotes
      t.boolean :kosher
      t.boolean :halal
      t.boolean :meat
      t.boolean :fish
      t.boolean :shellfish
      t.boolean :vegetarian
      t.boolean :vegan
      t.boolean :dairy
      t.boolean :gluten
      t.boolean :nuts
      t.boolean :soy
      t.boolean :spicy

      t.timestamps null: false
    end
  end
end
