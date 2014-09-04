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

ActiveRecord::Schema.define(version: 20140904170633) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "challenges", force: true do |t|
    t.string   "title"
    t.string   "category"
    t.integer  "challenge_amount"
    t.string   "charity_id"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "end_date"
    t.datetime "start_date"
    t.integer  "supporter_amount"
  end

  create_table "messages", force: true do |t|
    t.text     "text"
    t.boolean  "is_private"
    t.boolean  "is_caught"
    t.boolean  "is_confirmed"
    t.text     "img_url"
    t.boolean  "is_invitation"
    t.integer  "user_id"
    t.integer  "challenge_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "msgpic_file_name"
    t.string   "msgpic_content_type"
    t.integer  "msgpic_file_size"
    t.datetime "msgpic_updated_at"
  end

  create_table "user_challenges", force: true do |t|
    t.string   "role"
    t.boolean  "is_accepted"
    t.integer  "balance"
    t.boolean  "challenge_success"
    t.text     "video_url"
    t.integer  "user_id"
    t.integer  "challenge_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone_number"
    t.text     "img_url"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "code"
    t.datetime "expires_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
