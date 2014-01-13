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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140113005927) do

  create_table "artist_blocked_time_slots", :force => true do |t|
    t.integer  "artist_id"
    t.integer  "blocked_time_slot_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "artist_genres", :force => true do |t|
    t.integer  "artist_id"
    t.integer  "genre_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "artist_genres", ["artist_id"], :name => "index_artist_genres_on_artist_id"
  add_index "artist_genres", ["genre_id"], :name => "index_artist_genres_on_genre_id"

  create_table "artist_ratings", :force => true do |t|
    t.integer  "rating"
    t.integer  "artist_id"
    t.integer  "artist_rater_id"
    t.string   "artist_rater_type"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "artists", :force => true do |t|
    t.integer  "lowest_price"
    t.integer  "highest_price"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "authentications", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.string   "provider",   :null => false
    t.string   "uid",        :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "blocked_time_slots", :force => true do |t|
    t.time     "start_time"
    t.float    "duration"
    t.string   "day"
    t.boolean  "pending"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "am"
  end

  create_table "fan_genres", :force => true do |t|
    t.integer  "fan_id"
    t.integer  "genre_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fan_shows", :force => true do |t|
    t.integer  "fan_id"
    t.integer  "show_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fans", :force => true do |t|
    t.integer  "area"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "follows", :force => true do |t|
    t.integer  "follower_id"
    t.integer  "following_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "genres", :force => true do |t|
    t.string   "kind"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "show_blocked_time_slots", :force => true do |t|
    t.integer  "show_id"
    t.integer  "blocked_time_slot_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "shows", :force => true do |t|
    t.integer  "price"
    t.integer  "venue_id"
    t.integer  "artist_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tracks", :force => true do |t|
    t.string   "url"
    t.integer  "artist_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "photo"
    t.integer  "profile_id"
    t.string   "profile_type"
  end

  add_index "users", ["remember_me_token"], :name => "index_users_on_remember_me_token"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token"

  create_table "venue_blocked_time_slots", :force => true do |t|
    t.integer  "venue_id"
    t.integer  "blocked_time_slot_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "venue_ratings", :force => true do |t|
    t.integer  "venue_id"
    t.integer  "rating"
    t.integer  "venue_rater_id"
    t.integer  "venue_rater_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "venues", :force => true do |t|
    t.text     "about"
    t.integer  "lowest_price"
    t.integer  "highest_price"
    t.string   "address"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
