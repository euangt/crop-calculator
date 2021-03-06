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

ActiveRecord::Schema.define(version: 2021_03_06_142440) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chemicals", force: :cascade do |t|
    t.string "name"
    t.integer "price_per_litre"
    t.integer "application_frequency"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "crops", force: :cascade do |t|
    t.string "crop_name"
    t.bigint "chemical_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chemical_id"], name: "index_crops_on_chemical_id"
  end

  create_table "farms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fields", force: :cascade do |t|
    t.bigint "farm_id", null: false
    t.string "name"
    t.integer "width"
    t.integer "length"
    t.bigint "crop_id", null: false
    t.date "last_sprayed"
    t.integer "hectarage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["crop_id"], name: "index_fields_on_crop_id"
    t.index ["farm_id"], name: "index_fields_on_farm_id"
  end

  add_foreign_key "crops", "chemicals"
  add_foreign_key "fields", "crops"
  add_foreign_key "fields", "farms"
end
