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

ActiveRecord::Schema.define(:version => 20120104063216) do

  create_table "emails", :force => true do |t|
    t.integer  "users_id"
    t.string   "email"
    t.integer  "vericode"
    t.boolean  "status"
    t.boolean  "expiredcode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "check"
  end

  create_table "friends", :force => true do |t|
    t.integer  "users_id"
    t.integer  "friendid"
    t.boolean  "isaccept"
    t.datetime "timeline"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mails", :force => true do |t|
    t.integer  "users_id"
    t.string   "email"
    t.integer  "vericode"
    t.boolean  "status"
    t.boolean  "expiredcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", :force => true do |t|
    t.integer  "sender_id"
    t.integer  "receiver_id"
    t.text     "subject"
    t.text     "content"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phones", :force => true do |t|
    t.integer  "users_id"
    t.string   "phoneno"
    t.integer  "vericode"
    t.boolean  "status"
    t.boolean  "expiredcode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "check"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.integer  "mobile"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
