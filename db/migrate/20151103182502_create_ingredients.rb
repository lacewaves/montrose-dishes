class CreateIngredients < ActiveRecord::Migration

  def change
    create_table :ingredients do |t|
      t.string :name
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
      t.string :food_group

      t.timestamps null: false
    end
  end
end
