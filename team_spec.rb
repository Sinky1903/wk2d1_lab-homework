require('minitest/autorun')
require('minitest/rg')

require_relative("../Team.rb")

class Test_Team < MiniTest::Test

  def setup
    @pirates = Team.new(
      "Sinkys Saints", 
      ["Sinky", "Kitch", "Sumo", "Gogs", "Styles", "Rubz"], 
      "Big Davie",
      0)
  end

  def test_add_new_player()
   @pirates.add_player("Pirie")

  # assert_equal(7, @pirates.player_names.count)
  assert_equal("Pirie", @pirates.player_names.last)
end

def test_can_find_player()
  assert_equal( true, @pirates.find("Sumo") )
end

def test_can_find_player()
  assert_equal( false, @pirates.find("Ben") )
end


def test_update_points_win()
  @pirates.win_match(3)
  assert_equal(3, @pirates.total_points)
  puts @pirates.total_points
end

def test_update_points_lose()
  @pirates.win_match(0)
  assert_equal(0, @pirates.total_points)
end


end

# @pirates.add_player("Alan")
# @pirates.add_player("Ryan")
# @pirates.add_player("Johnny Depp")