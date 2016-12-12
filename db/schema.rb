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

ActiveRecord::Schema.define(version: 20161212164256) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conversations", force: :cascade do |t|
    t.integer  "user_one_id", null: false
    t.integer  "user_two_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "from_id",    null: false
    t.integer  "to_id",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "likes", ["from_id", "to_id"], name: "index_likes_on_from_id_and_to_id", unique: true, using: :btree
  add_index "likes", ["to_id"], name: "index_likes_on_to_id", using: :btree

  create_table "messages", force: :cascade do |t|
    t.integer  "author_id",  null: false
    t.integer  "thread_id",  null: false
    t.text     "body",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "messages", ["author_id"], name: "index_messages_on_author_id", using: :btree
  add_index "messages", ["body"], name: "index_messages_on_body", using: :btree
  add_index "messages", ["thread_id"], name: "index_messages_on_thread_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",           null: false
    t.string   "email",              null: false
    t.string   "password_digest",    null: false
    t.string   "session_token",      null: false
    t.string   "gender",             null: false
    t.string   "sexuality",          null: false
    t.integer  "age",                null: false
    t.string   "location",           null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.text     "summary"
    t.text     "doing"
    t.text     "good_at"
    t.text     "favorites"
    t.text     "thinking"
    t.text     "friday"
    t.text     "message_if"
    t.integer  "prof_pic_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "users", ["age"], name: "index_users_on_age", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["gender"], name: "index_users_on_gender", using: :btree
  add_index "users", ["location"], name: "index_users_on_location", using: :btree
  add_index "users", ["session_token"], name: "index_users_on_session_token", unique: true, using: :btree
  add_index "users", ["sexuality"], name: "index_users_on_sexuality", using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
