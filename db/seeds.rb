# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

restaurants = Restaurant.create name: "Niko Niko's",
                             placeId: "ChIJ-SKYT2C_QIYRY_5IDAJOEwM",
                             cuisine: "Greek"

Dish.create name: "Spinach and Feta Pita",
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
                        spicy: false

Ingredient.create name: "Spinach",
                  food_group: "Vegetable"

Ingredient.create name: "Feta Cheese",
                  food_group: "Dairy"

Ingredient.create name: "Pita Bread",
                  food_group: "Grains"
