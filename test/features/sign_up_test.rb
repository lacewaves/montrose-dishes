require "test_helper"

class SignUpTest < Capybara::Rails::TestCase
  setup do
    nikonikos = Restaurant.create! name: "Niko Niko's", placeId: "ChIJ-SKYT2C_QIYRY_5IDAJOEwM", cuisine: "Greek"

    spinachpita = Dish.create! name: "Spinach and Feta Pita", cuisine: "Greek", dish_type: "Sandwich", upvotes: 23, restaurant_id: nikonikos.id

    baklava = Dish.create! name: "Baklava", cuisine: "Greek", dish_type: "Pastry", upvotes: 15, restaurant_id: nikonikos.id

    spinach = Ingredient.create! name: "Spinach", food_group: "Vegetable"

    feta = Ingredient.create! name: "Feta Cheese", food_group: "Dairy"

    pita = Ingredient.create! name: "Pita Bread", food_group: "Grains"

    honey = Ingredient.create! name: "Honey", food_group: "Sugar"

    almonds = Ingredient.create! name: "Almonds", food_group: "Nuts"

    pastry = Ingredient.create! name: "Pastry Dough", food_group: "Grains"

    DishIngredient.create! dish_id: spinachpita.id, ingredient_id: spinach.id

    DishIngredient.create! dish_id: spinachpita.id, ingredient_id: feta.id

    DishIngredient.create! dish_id: spinachpita.id, ingredient_id: pita.id

    DishIngredient.create! dish_id: baklava.id, ingredient_id: honey.id

    DishIngredient.create! dish_id: baklava.id, ingredient_id: almonds.id

    DishIngredient.create! dish_id: baklava.id, ingredient_id: pastry.id
  end

  test "Can Sign In" do
    user = User.create! username: "testuser", password: "12345678"

    visit root_path
    click_link "Sign In"
    fill_in "Username", with: "testuser"
    fill_in "Password", with: "12345678"
    click_button "Sign In"

    assert_content page, "signing in"

end

end
