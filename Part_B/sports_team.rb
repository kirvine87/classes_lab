class SportsTeam

attr_reader :team_name, :players, :points
attr_accessor :coach
def initialize(team_name,players,coach,points)
  @team_name = team_name
  @players = players
  @coach = coach
  @points = points
end


def add_new_player(player)
  @players << player
end

def check_name(name)
  @players.include?(name)
end

def team_result(result)

  if(result == "Won") then @points += 3
  elsif(result == "Draw") then @points += 0
  else @points -= 3
  end

end

end
