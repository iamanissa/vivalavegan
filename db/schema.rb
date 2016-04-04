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

ActiveRecord::Schema.define(version: 20160404182729) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foods", force: :cascade do |t|
    t.string  "name"
    t.string  "ingredients"
    t.string  "tag"
    t.string  "photo_url"
    t.integer "restaurant_id"
    t.string  "info"
  end

  add_index "foods", ["restaurant_id"], name: "index_foods_on_restaurant_id", using: :btree

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "info"
    t.string "category"
    t.string "photo_url"
    t.string "gotchas"
  end

  add_foreign_key "foods", "restaurants"
end
