# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_08_012557) do
  create_table "teams", force: :cascade do |t|
    t.string "db_id"
    t.string "name"
    t.string "abbreviation"
    t.string "city"
    t.integer "est."
    t.string "conference"
    t.string "division"
    t.string "location"
    t.string "nickname"
    t.string "arena"
    t.string "url"
    t.integer "points"
    t.integer "wins"
    t.integer "losses"
    t.integer "ot_losses"
    t.integer "reg_wins"
    t.integer "goals_against"
    t.integer "goals_for"
    t.integer "row"
    t.integer "games_played"
    t.integer "point_perc"
    t.integer "pointp_div_rank"
    t.integer "pointp_conf_rank"
    t.integer "pointp_leag_rank"
    t.string "last_refreshed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
