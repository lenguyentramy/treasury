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

ActiveRecord::Schema.define(:version => 20110824152857) do

  create_table "collectibles", :force => true do |t|
    t.integer  "user_id"
    t.integer  "poi_id"
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interactions", :force => true do |t|
    t.string   "title"
    t.string   "text"
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
  end

  create_table "multiple_choices", :force => true do |t|
    t.string  "question"
    t.string  "anwers"
    t.integer "result"
  end

  create_table "pois", :force => true do |t|
    t.float    "lat"
    t.float    "lng"
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address"
    t.integer  "interaction_id"
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
    t.boolean  "admin"
    t.boolean  "blocked"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "view_multiple_choices", :id => false, :force => true do |t|
    t.integer  "id",         :default => 0, :null => false
    t.string   "title"
    t.string   "text"
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "question"
    t.string   "anwers"
    t.integer  "result"
  end

end
