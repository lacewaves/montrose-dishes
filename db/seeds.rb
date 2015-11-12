# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

nikonikos = Restaurant.create name: "Niko Niko's",
                             placeId: "ChIJ-SKYT2C_QIYRY_5IDAJOEwM",
                             cuisine: "Greek",
                             latitude: 29.746524,
                             longitude: -95.3921641

spinachpita = Dish.create name: "Spinach and Feta Pita",
            cuisine: "Greek",
            dish_type: "Sandwich",
            upvotes: 23,
            kosher: true,
            halal: true,
            meat: false,
            fish: false,
            shellfish: false,
            vegetarian: true,
            vegan: true,
            dairy: true,
            gluten: true,
            nuts: false,
            soy: false,
            spicy: false,
            restaurant_id: nikonikos.id

baklava = Dish.create name: "Baklava",
            cuisine: "Greek",
            dish_type: "Pastry",
            upvotes: 15,
            kosher: true,
            halal: true,
            meat: false,
            fish: false,
            shellfish: false,
            vegetarian: true,
            vegan: true,
            dairy: true,
            gluten: true,
            nuts: true,
            soy: false,
            spicy: false,
            restaurant_id: nikonikos.id

spinach = Ingredient.create name: "Spinach",
                  food_group: "Vegetable"

feta = Ingredient.create name: "Feta Cheese",
                  food_group: "Dairy"

pita = Ingredient.create name: "Pita Bread",
                  food_group: "Grains"

honey = Ingredient.create name: "Honey",
                  food_group: "Sugar"

almonds = Ingredient.create name: "Almonds",
                  food_group: "Nuts"

pastry = Ingredient.create name: "Pastry Dough",
                  food_group: "Grains"

DishIngredient.create dish_id: spinachpita.id,
                       ingredient_id: spinach.id

DishIngredient.create dish_id: spinachpita.id,
                      ingredient_id: feta.id

DishIngredient.create dish_id: spinachpita.id,
                       ingredient_id: pita.id

DishIngredient.create dish_id: baklava.id,
                       ingredient_id: honey.id

DishIngredient.create dish_id: baklava.id,
                       ingredient_id: almonds.id

DishIngredient.create dish_id: baklava.id,
                       ingredient_id: pastry.id
