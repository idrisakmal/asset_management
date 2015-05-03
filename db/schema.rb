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

ActiveRecord::Schema.define(version: 20150428115248) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "assets", force: :cascade do |t|
    t.string   "serial"
    t.string   "tag"
    t.integer  "staff_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "assets", ["product_id"], name: "index_assets_on_product_id", using: :btree
  add_index "assets", ["staff_id"], name: "index_assets_on_staff_id", using: :btree

  create_table "logs", force: :cascade do |t|
    t.string   "title"
    t.text     "message"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_categories", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_categories_products", id: false, force: :cascade do |t|
    t.integer "product_id",          null: false
    t.integer "product_category_id", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.hstore   "specs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles_staffs", id: false, force: :cascade do |t|
    t.integer "staff_id", null: false
    t.integer "role_id",  null: false
  end

  add_index "roles_staffs", ["role_id", "staff_id"], name: "index_roles_staffs_on_role_id_and_staff_id", using: :btree
  add_index "roles_staffs", ["staff_id", "role_id"], name: "index_roles_staffs_on_staff_id_and_role_id", using: :btree

  create_table "staffs", force: :cascade do |t|
    t.string   "name"
    t.string   "hp"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "profile_updated"
  end

  add_index "staffs", ["email"], name: "index_staffs_on_email", unique: true, using: :btree
  add_index "staffs", ["reset_password_token"], name: "index_staffs_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "assets", "products"
  add_foreign_key "assets", "staffs"
end
