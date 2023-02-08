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

# Team Creation Loop
for team in teams_data["teams"]
    new_team = Team.new
        new_team["db_id"] = team["id"]
        new_team["name"] = team["name"]
        new_team["abbreviation"] = team["abbreviation"]
        new_team["city"] = team["city"]
        new_team["est."] = team["firstYearOfPlay"]
        new_team["conference"] = team["conference"]["name"]
        new_team["division"] = team["division"]["name"]
        new_team["location"] = team["locationName"]
        new_team["nickname"] = team["teamName"]
        new_team["arena"] = team["venue"]["name"]
        new_team["url"] = team["officialSiteUrl"]
    new_team.save
end

# Data Validity Check
puts "Team: #{Team.all.count}"
all_teams = Team.all
for team in all_teams
  name = team["name"]
  abbreviation = team["abbreviation"]
  division = team["division"]
  puts "#{name} -- #{abbreviation} -- #{division}"
end