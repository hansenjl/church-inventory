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

ActiveRecord::Schema.define(version: 2019_09_22_043142) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.text "notes"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_areas_on_location_id"
  end

  create_table "churches", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.text "notes"
    t.bigint "area_id"
    t.bigint "purpose_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_items_on_area_id"
    t.index ["purpose_id"], name: "index_items_on_purpose_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.text "notes"
    t.bigint "church_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["church_id"], name: "index_locations_on_church_id"
  end

  create_table "purposes", force: :cascade do |t|
    t.string "name"
    t.text "notes"
    t.bigint "church_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["church_id"], name: "index_purposes_on_church_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest"
    t.bigint "church_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["church_id"], name: "index_users_on_church_id"
  end

  add_foreign_key "areas", "locations"
  add_foreign_key "items", "areas"
  add_foreign_key "items", "purposes"
  add_foreign_key "locations", "churches"
  add_foreign_key "purposes", "churches"
  add_foreign_key "users", "churches"
end
