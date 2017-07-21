require'minitest/autorun'
require_relative'../models/player.rb'
require'pry'

class TestPlayer < Minitest::Test

  def setup
    @player1 = Player.new('first_name' => 'Chris', 'surname' => 'Donnelly', 'runner_faction' => 'Shaper', 'runner_identity' => 'Kate "Mac" McCaffrey: Digital Tinker', 'corp_faction' => 'Haas-Bioroid', 'corp_idenity' => 'Engineering the Future')
  end

  def test_initialize
    result1 = @player1.first_name
    result2 = @player1.corp_faction
    assert_equal("Chris", result1)
    assert_equal("Haas-Bioroid", result2)
  end

end