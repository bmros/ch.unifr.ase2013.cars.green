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

ActiveRecord::Schema.define(version: 20131011125801) do

  create_table "bids", force: true do |t|
    t.string   "bidder"
    t.integer  "amount"
    t.integer  "car_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bids", ["car_id"], name: "index_bids_on_car_id"
  add_index "bids", ["user_id"], name: "index_bids_on_user_id"

  create_table "cars", force: true do |t|
    t.string   "title"
    t.string   "brand"
    t.string   "model"
    t.integer  "mileage"
    t.string   "color"
    t.integer  "startprize"
    t.integer  "buyoutprize"
    t.datetime "duration"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "creator"
  end

  add_index "cars", ["user_id"], name: "index_cars_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
  end

end
