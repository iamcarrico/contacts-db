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

ActiveRecord::Schema.define(version: 20151211134510) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "household_id",   limit: 4
    t.string   "business_name",  limit: 255
    t.string   "address1",       limit: 255
    t.string   "address2",       limit: 255
    t.string   "city",           limit: 255
    t.string   "state",          limit: 255
    t.string   "zip",            limit: 5
    t.string   "zip4",           limit: 4
    t.string   "country",        limit: 255
    t.text     "international",  limit: 65535
    t.boolean  "usps_confirmed", limit: 1
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "households", force: :cascade do |t|
    t.string   "label",         limit: 255
    t.integer  "head_of_house", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "people", force: :cascade do |t|
    t.integer  "household_id", limit: 4
    t.string   "first_name",   limit: 255
    t.string   "last_name",    limit: 255
    t.integer  "spouse",       limit: 4
    t.text     "notes",        limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end
