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

ActiveRecord::Schema.define(version: 20160714185956) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "avatar"
    t.string   "name",                   default: "", null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name",       default: "", null: false
    t.boolean  "people"
    t.boolean  "works"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "people", force: :cascade do |t|
    t.string   "name",       default: "", null: false
    t.string   "avatar"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "person_categories", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "person_categories", ["category_id"], name: "index_person_categories_on_category_id", using: :btree
  add_index "person_categories", ["person_id"], name: "index_person_categories_on_person_id", using: :btree

  create_table "work_categories", force: :cascade do |t|
    t.integer  "work_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "work_categories", ["category_id"], name: "index_work_categories_on_category_id", using: :btree
  add_index "work_categories", ["work_id"], name: "index_work_categories_on_work_id", using: :btree

  create_table "works", force: :cascade do |t|
    t.string   "name",                                  default: "",  null: false
    t.text     "description",                           default: "",  null: false
    t.string   "cover_image"
    t.decimal  "raised_money", precision: 10, scale: 2, default: 0.0, null: false
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
  end

  add_foreign_key "person_categories", "categories"
  add_foreign_key "person_categories", "people"
  add_foreign_key "work_categories", "categories"
  add_foreign_key "work_categories", "works"
end
