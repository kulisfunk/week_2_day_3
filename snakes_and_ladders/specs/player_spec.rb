require 'minitest/autorun'
require 'minitest/rg'
require_relative '../player'
require_relative '../dice'

class TestPlayer < MiniTest::Test

  def setup()
    @player1 = Player.new("Martin", "red")
    @player2 = Player.new("Louise", "green")
    @dice = Dice.new()
  end

  def test_roll_dice()
      actual = @player1.roll_dice(@dice)

      assert_includes(1..6, actual)
  end

  def test_player_name()
    actual = @player1.name()
    expected = "Martin"
    assert_equal(expected, actual)
  end
end
