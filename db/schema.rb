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

ActiveRecord::Schema.define(version: 20151105135150) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boroughs", force: :cascade do |t|
    t.string   "name"
    t.integer  "area"
    t.integer  "population"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "community_gardens", force: :cascade do |t|
    t.string   "name"
    t.integer  "borough_id"
    t.string   "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comparisons", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string   "name"
    t.float    "attendance"
    t.integer  "borough_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "farmers_markets", force: :cascade do |t|
    t.string   "name"
    t.integer  "borough_id"
    t.string   "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flus", force: :cascade do |t|
    t.string   "name"
    t.string   "borough_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hospitals", force: :cascade do |t|
    t.integer  "borough_id"
    t.string   "name"
    t.string   "hospital_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.integer  "borough_id"
    t.integer  "labor_force"
    t.integer  "employed"
    t.integer  "unemployed"
    t.float    "unemployment_rate"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "public_bins", force: :cascade do |t|
    t.integer  "borough_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recycle_bins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
