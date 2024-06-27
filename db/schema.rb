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

ActiveRecord::Schema[7.1].define(version: 2024_06_27_190812) do
  create_table "assets", force: :cascade do |t|
    t.integer "asset_id"
    t.string "asset_class"
    t.string "asset_type"
    t.string "asset_size"
    t.integer "park_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["park_id"], name: "index_assets_on_park_id"
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
  end

  add_foreign_key "assets", "parks"
end
