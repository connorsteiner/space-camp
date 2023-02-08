require "net/http"
require "json"
url_teams = "https://statsapi.web.nhl.com/api/v1/teams"
uri_teams = URI(url_teams)
response_teams = Net::HTTP.get(uri_teams)
teams_data = JSON.parse(response_teams)

url_standings = "https://statsapi.web.nhl.com/api/v1/standings"
uri_standings = URI(url_standings)
response_standings = Net::HTTP.get(uri_standings)
standings_data = JSON.parse(response_standings)

# Standings Update Loop
for div in standings_data["records"]
    for team in div["teamRecords"]

      u_team_id = team["team"]["id"]
      u_team = Team.find_by({"db_id" => u_team_id})   
      
        u_team["points"] = team["points"]
        u_team["wins"] = team["leagueRecord"]["wins"]
        u_team["losses"] = team["leagueRecord"]["losses"]
        u_team["ot_losses"] = team["leagueRecord"]["ot"]
        u_team["reg_wins"] = team["regulationWins"]
        u_team["goals_against"] = team["goalsAgainst"]
        u_team["goals_for"] = team["goalsScored"]
        u_team["row"] = team["row"]
        u_team["games_played"] = team["gamesPlayed"]
        u_team["point_perc"] = team["pointsPercentage"]
        u_team["pointp_div_rank"] = team["ppDivisionRank"]
        u_team["pointp_conf_rank"] = team["ppConferenceRank"]
        u_team["pointp_leag_rank"] = team["ppLeagueRank"]
        u_team["last_refreshed"] = team["lastUpdated"]

        u_team.save
    end
end

# Data Validity Check
puts "Team: #{Team.all.count}"
all_teams = Team.all
for team in all_teams
  league_rank = team["pointp_leag_rank"]
  name = team["name"]
  points = team["points"]
  last_refreshed = team["last_refreshed"]
  puts "#{league_rank} -- #{name} -- #{points} -- #{last_refreshed}"
end