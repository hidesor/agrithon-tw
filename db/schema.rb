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

ActiveRecord::Schema.define(version: 20160807144317) do

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

  create_table "welcomes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
