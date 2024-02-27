# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_02_27_204229) do
  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.integer "price"
    t.string "description"
    t.date "date"
    t.integer "user_id", null: false
    t.integer "service_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "vehicle_make_name"
    t.string "vehicle_model_name"
    t.string "vehicle_year_year"
    t.index ["service_id"], name: "index_reviews_on_service_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "title"
    t.float "minimum_price"
    t.float "maximum_price"
    t.float "average_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.string "slug"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
  end

  create_table "vehicle_makes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "review_id"
    t.index ["review_id"], name: "index_vehicle_makes_on_review_id"
  end

  create_table "vehicle_models", force: :cascade do |t|
    t.string "name"
    t.integer "vehicle_make_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "vehicle_year_id"
    t.index ["vehicle_make_id"], name: "index_vehicle_models_on_vehicle_make_id"
    t.index ["vehicle_year_id"], name: "index_vehicle_models_on_vehicle_year_id"
  end

  create_table "vehicle_years", force: :cascade do |t|
    t.integer "year"
    t.integer "vehicle_model_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_model_id"], name: "index_vehicle_years_on_vehicle_model_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "reviews", "services"
  add_foreign_key "reviews", "users"
  add_foreign_key "vehicle_makes", "reviews"
  add_foreign_key "vehicle_models", "vehicle_makes"
  add_foreign_key "vehicle_models", "vehicle_years"
  add_foreign_key "vehicle_years", "vehicle_models"
end
