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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130704125649) do

  create_table "body_types", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "cars", :force => true do |t|
    t.string   "name"
    t.string   "image"
    t.decimal  "price"
    t.float    "mph"
    t.float    "mpg"
    t.string   "car_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "engine_type_id"
    t.integer  "body_type_id"
  end

  create_table "engine_types", :force => true do |t|
    t.string   "description"
    t.string   "fuel"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
