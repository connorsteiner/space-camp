class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
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
      
      t.timestamps
    end
  end
end
