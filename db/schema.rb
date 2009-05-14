# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090514103232) do

  create_table "friends", :force => true do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.boolean  "progress_flg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", :force => true do |t|
    t.integer  "parchee_id"
    t.integer  "user_id"
    t.boolean  "attendance_flg"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parchees", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "content"
    t.datetime "date"
    t.boolean  "right_now_flg"
    t.integer  "user_latitude"
    t.integer  "user_longitude"
    t.boolean  "delete_flg"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "mail_address"
    t.string   "mobile_id"
    t.boolean  "simple_login_flg"
    t.string   "hashed_password"
    t.string   "salt"
    t.string   "activate_key"
    t.boolean  "activate_flg"
    t.boolean  "delete_flg"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

end
