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

ActiveRecord::Schema.define(version: 20160813034305) do

  create_table "farm_products", force: :cascade do |t|
    t.string   "month"
    t.string   "crop"
    t.string   "county"
    t.string   "town"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "ptype"
    t.string   "variety"
  end

  create_table "prices", force: :cascade do |t|
    t.string   "name"
    t.string   "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "jan"
    t.string   "feb"
    t.string   "mar"
    t.string   "apr"
    t.string   "may"
    t.string   "jun"
    t.string   "jul"
    t.string   "aug"
    t.string   "sep"
    t.string   "ort"
    t.string   "nov"
    t.string   "dec"
  end

  create_table "trading_markets", force: :cascade do |t|
    t.date     "trading_date"
    t.string   "crop_name"
    t.string   "crop_number"
    t.string   "market_name"
    t.string   "market_number"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.float    "on_price"
    t.float    "the_price"
    t.float    "by_price"
    t.float    "avg_price"
    t.float    "tranding_price"
  end

  create_table "weather_data", force: :cascade do |t|
    t.date     "a_date"
    t.date     "b_date"
    t.date     "c_date"
    t.string   "a_string"
    t.string   "b_string"
    t.string   "c_string"
    t.string   "d_string"
    t.integer  "data_a"
    t.integer  "data_b"
    t.integer  "data_c"
    t.integer  "data_d"
    t.integer  "data_e"
    t.integer  "data_f"
    t.integer  "data_g"
    t.integer  "data_h"
    t.integer  "data_i"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weather_tests", force: :cascade do |t|
    t.date     "date_a"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weathers", force: :cascade do |t|
    t.string   "name_a"
    t.string   "name_b"
    t.string   "name_c"
    t.string   "name_d"
    t.string   "name_e"
    t.float    "num_a"
    t.float    "num_b"
    t.float    "num_c"
    t.float    "num_d"
    t.float    "num_e"
    t.float    "num_f"
    t.float    "num_g"
    t.float    "num_h"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date     "date_a"
    t.date     "date_b"
    t.date     "date_c"
    t.date     "date_d"
  end

  create_table "welcomes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
