require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test

def setup()
  @team = SportsTeam.new("Storm", ["Ben", "Adam", "Joe", "Sarah"], "Coach")
end

def test_get_team_name()
  assert_equal("Storm", @team.team_name)
end

def test_get_players()
  assert_equal(["Ben", "Adam", "Joe", "Sarah"], @team.players)
end

def test_get_coach
  assert_equal("Coach", @team.coach)
end

def test_set_coach_name
  @team.coach = "Coach C"
  assert_equal("Coach C", @team.coach)
end

def test_add_new_player()
  @team.add_new_player("Hannah")
  assert_equal(5, @team.players.count())
end

end
