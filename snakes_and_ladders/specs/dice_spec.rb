require 'minitest/autorun'
require 'minitest/rg'
require_relative '../dice'

class TestDice < MiniTest::Test

  def setup()
    @dice = Dice.new()
  end

  def test_dice_roll()
    actual = @dice.dice_roll()
    assert_includes(1..6, actual)
  end
end
