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

ActiveRecord::Schema.define(version: 2018_06_28_212539) do

  create_table "games", force: :cascade do |t|
    t.integer "status"
  end

  create_table "moves", force: :cascade do |t|
    t.integer "game_id"
    t.integer "q"
    t.integer "r"
    t.integer "result"
    t.index ["game_id"], name: "index_moves_on_game_id"
  end

  create_table "players", force: :cascade do |t|
    t.integer "game_id"
    t.integer "seat_number"
    t.text "submitted_board"
    t.boolean "ready"
    t.index ["game_id"], name: "index_players_on_game_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "player_id"
    t.string "name"
    t.string "email"
    t.string "password"
    t.integer "wins"
    t.integer "losses"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_users_on_player_id"
  end

end
