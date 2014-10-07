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

ActiveRecord::Schema.define(version: 20141001035705) do

  create_table "drivers", force: true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "languagesSpoken"
    t.string   "city"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drivers_languages", id: false, force: true do |t|
    t.integer "driver_id",   null: false
    t.integer "language_id", null: false
  end

  add_index "drivers_languages", ["driver_id", "language_id"], name: "index_drivers_languages_on_driver_id_and_language_id"
  add_index "drivers_languages", ["language_id", "driver_id"], name: "index_drivers_languages_on_language_id_and_driver_id"

  create_table "languages", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

end
