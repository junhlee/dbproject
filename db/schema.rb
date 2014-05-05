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

ActiveRecord::Schema.define(version: 20140505034039) do

  create_table "carts", force: true do |t|
    t.integer  "customer_id"
    t.integer  "number_of_products"
    t.float    "total_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carts_products", id: false, force: true do |t|
    t.integer "cart_id",    null: false
    t.integer "product_id", null: false
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "username"
    t.string   "password"
    t.string   "city"
    t.string   "street"
    t.integer  "zip"
    t.integer  "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.float    "price"
    t.integer  "stock"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vendor_id"
  end

  create_table "sales", force: true do |t|
    t.integer  "customer_id"
    t.integer  "vendor_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendors", force: true do |t|
    t.string   "name"
    t.string   "username"
    t.string   "password"
    t.string   "city"
    t.string   "street"
    t.integer  "zip"
    t.integer  "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wishlists", force: true do |t|
    t.string   "title"
    t.integer  "customer_id"
    t.integer  "number_of_products"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
