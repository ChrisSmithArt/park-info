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

ActiveRecord::Schema[7.1].define(version: 2024_06_28_131300) do
  create_table "asset_categories", force: :cascade do |t|
    t.string "asset_class"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assets", force: :cascade do |t|
    t.integer "asset_id"
    t.string "asset_class"
    t.string "asset_type"
    t.string "asset_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "asset_category_id"
    t.integer "park_id"
    t.index ["asset_category_id"], name: "index_assets_on_asset_category_id"
  end

  create_table "park_categories", force: :cascade do |t|
    t.string "park_category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parks", force: :cascade do |t|
    t.integer "park_id"
    t.string "park_name"
    t.string "park_description"
    t.string "park_neighbourhood"
    t.string "park_category"
    t.decimal "total_area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "park_location"
    t.integer "park_category_id"
    t.index ["park_category_id"], name: "index_parks_on_park_category_id"
  end

  add_foreign_key "assets", "asset_categories"
  add_foreign_key "assets", "park_id"
  add_foreign_key "parks", "park_categories"
end
