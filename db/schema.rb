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

ActiveRecord::Schema.define(version: 20150119134133) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: true do |t|
    t.string   "hash"
    t.integer  "first_move_user_id"
    t.integer  "last_move_user_id"
    t.integer  "winner"
    t.integer  "status"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "games", ["first_move_user_id"], name: "index_games_on_first_move_user_id", using: :btree
  add_index "games", ["hash"], name: "index_games_on_hash", using: :btree
  add_index "games", ["last_move_user_id"], name: "index_games_on_last_move_user_id", using: :btree
  add_index "games", ["status"], name: "index_games_on_status", using: :btree
  add_index "games", ["winner"], name: "index_games_on_winner", using: :btree

  create_table "histories", force: true do |t|
    t.integer  "game_id"
    t.integer  "number"
    t.string   "move"
    t.text     "message"
    t.integer  "status"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "histories", ["game_id"], name: "index_histories_on_game_id", using: :btree
  add_index "histories", ["status"], name: "index_histories_on_status", using: :btree

  create_table "last_board_states", force: true do |t|
    t.integer  "game_id"
    t.text     "board_state"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "last_board_states", ["game_id"], name: "index_last_board_states_on_game_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree

end
