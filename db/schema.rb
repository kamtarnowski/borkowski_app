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

ActiveRecord::Schema.define(version: 20150123161850) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "business_methods", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "met_title"
    t.string   "met_description"
    t.string   "met_keywords"
  end

  add_index "business_methods", ["title", "content", "created_at"], name: "index_business_methods_on_title_and_content_and_created_at", using: :btree

  create_table "company_data", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.string   "phone"
    t.string   "mob_phone"
    t.string   "met_title"
    t.string   "met_description"
    t.string   "met_keywords"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "company_data", ["title", "content", "created_at"], name: "index_company_data_on_title_and_content_and_created_at", using: :btree

  create_table "galleries", force: true do |t|
    t.string   "title"
    t.string   "met_title"
    t.string   "met_description"
    t.string   "met_keywords"
    t.text     "content_top"
    t.text     "content_bottom"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title_footer"
  end

  create_table "gallery_contents", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "home_pages", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "met_title"
    t.string   "met_description"
    t.string   "met_keywords"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "carousel"
  end

  add_index "home_pages", ["title", "content", "created_at"], name: "index_home_pages_on_title_and_content_and_created_at", using: :btree

  create_table "opinions", force: true do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "opinions", ["user_id", "created_at"], name: "index_opinions_on_user_id_and_created_at", using: :btree
  add_index "opinions", ["user_id"], name: "index_opinions_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
