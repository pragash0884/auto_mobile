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

ActiveRecord::Schema.define(version: 20131217193013) do

  create_table "bill_details", force: true do |t|
    t.integer  "spare_item_id"
    t.integer  "bill_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bills", force: true do |t|
    t.integer  "bill_no"
    t.decimal  "discount",     precision: 10, scale: 0
    t.integer  "tax"
    t.decimal  "total_amount", precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "brand_types", force: true do |t|
    t.string   "brand_name"
    t.integer  "brand_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "brands", force: true do |t|
    t.string   "name"
    t.integer  "product_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "daily_inventory_levels", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_types", force: true do |t|
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spare_items", force: true do |t|
    t.string   "item_name"
    t.string   "description"
    t.integer  "brand_type_id"
    t.decimal  "price",         precision: 10, scale: 0
    t.decimal  "discount",      precision: 10, scale: 0
    t.string   "serial_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "display_name"
    t.string   "email"
    t.string   "password"
    t.string   "city"
    t.string   "address1"
    t.string   "address2"
    t.string   "phone"
    t.integer  "pincode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
