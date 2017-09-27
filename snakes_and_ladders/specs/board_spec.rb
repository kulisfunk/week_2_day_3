require 'minitest/autorun'
require 'minitest/rg'
require_relative '../board'

class TestBoard < MiniTest::Test

  def setup()
    @game = Game.new("Snakes and Ladders", 2)
  end

  def test_add_snakes_ladders()


end
