# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160706200759) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "pg_trgm"
  enable_extension "fuzzystrmatch"

  create_table "dish_ingredients", force: :cascade do |t|
    t.integer  "dish_id"
    t.integer  "ingredient_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "dishes", force: :cascade do |t|
    t.integer  "restaurant_id"
    t.string   "name"
    t.string   "cuisine"
    t.string   "dish_type"
    t.integer  "upvotes"
    t.boolean  "kosher"
    t.boolean  "halal"
    t.boolean  "meat"
    t.boolean  "fish"
    t.boolean  "shellfish"
    t.boolean  "vegetarian"
    t.boolean  "vegan"
    t.boolean  "dairy"
    t.boolean  "gluten"
    t.boolean  "nuts"
    t.boolean  "soy"
    t.boolean  "spicy"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "dish_image_id"
  end

  add_index "dishes", ["restaurant_id"], name: "index_dishes_on_restaurant_id", using: :btree

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.string   "food_group"
    t.string   "dishes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "refile_attachments", force: :cascade do |t|
    t.string "namespace", null: false
  end

  add_index "refile_attachments", ["namespace"], name: "index_refile_attachments_on_namespace", using: :btree

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.string   "placeId"
    t.string   "cuisine"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "longitude"
    t.integer  "latitude"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
