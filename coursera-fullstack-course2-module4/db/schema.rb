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

ActiveRecord::Schema.define(version: 20151106142637) do

# Could not dump table "profiles" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "todo_items", force: :cascade do |t|
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.date     "due_date"
    t.string   "title"
    t.text     "description"
    t.boolean  "completed",    default: false
    t.integer  "user_id"
    t.integer  "todo_list_id"
  end

  add_index "todo_items", ["todo_list_id"], name: "index_todo_items_on_todo_list_id"
  add_index "todo_items", ["user_id"], name: "index_todo_items_on_user_id"

  create_table "todo_lists", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "list_name"
    t.date     "list_due_date"
    t.integer  "user_id"
  end

  add_index "todo_lists", ["user_id"], name: "index_todo_lists_on_user_id"

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "username"
  end

end
