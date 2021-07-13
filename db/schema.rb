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

ActiveRecord::Schema.define(version: 2021_07_12_232747) do

  create_table "buyers", force: :cascade do |t|
    t.string "name"
    t.string "email"
  end

  create_table "galleries", force: :cascade do |t|
    t.string "gallery_name"
    t.datetime "date"
    t.string "time"
    t.string "location"
  end

  create_table "paintings", force: :cascade do |t|
    t.string "painting_name"
    t.string "image", null: false
    t.string "artist_name"
    t.string "country_birth"
    t.string "birthday"
    t.integer "price"
    t.integer "gallery_id"
    t.integer "buyer_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "buyer_id"
    t.integer "gallery_id"
    t.string "comment"
  end

end
