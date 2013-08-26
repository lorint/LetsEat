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

ActiveRecord::Schema.define(version: 20130826115136) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "internet_reservations", force: true do |t|
    t.string   "phone_num"
    t.string   "source_website"
    t.datetime "time_reserved"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phone_reservations", force: true do |t|
    t.string   "phone_num"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reservations", force: true do |t|
    t.datetime "res_time",                    null: false
    t.string   "name",                        null: false
    t.integer  "num_people",      default: 2, null: false
    t.integer  "restaurant_id",               null: false
    t.integer  "reservable_id"
    t.string   "reservable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reservations", ["restaurant_id"], name: "index_reservations_on_restaurant_id", using: :btree

  create_table "restaurants", force: true do |t|
    t.string   "name",                     null: false
    t.integer  "capacity",   default: 50,  null: false
    t.integer  "max_time",   default: 120, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "time_slots", force: true do |t|
    t.integer  "offset",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
