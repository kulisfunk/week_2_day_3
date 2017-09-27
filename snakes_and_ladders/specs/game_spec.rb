require 'minitest/autorun'
require 'minitest/rg'
require_relative '../game'
require_relative '../player'
require_relative '../dice'

class TestGame < MiniTest::Test

  def setup()
    @game = Game.new("Snakes and Ladders")
    @player1 = Player.new("Martin", "red")
    @player2 = Player.new("Louise", "green")
    @dice = Dice.new()
    @turn = 1
  end

  def test_update_position()
      @game.add_players(@player1)
      @game.add_players(@player2)
      @game.start_game
      actual = @game.update_position(@dice)

      assert_includes(1..6, actual)
  end

  # def test_game_name()
  #   actual = @game.game_name()
  #   expected = "Snakes and Ladders"
  #
  #   assert_equal(expected, actual)
  # end
  #
  # def test_num_of_players()
  #   actual = @game.num_of_players()
  #   expected = 0
  #
  #   assert_equal(expected, actual)
  # end
  #
  # def test_add_player()
  #   @game.add_players(@player1)
  #   actual = @game.add_players(@player2)
  #   expected = 2
  #   assert_equal(expected, actual)
  # end
  #
  #
  # def test_start_game()
  #   @game.add_players(@player1)
  #   @game.add_players(@player2)
  #   actual = @game.start_game()
  #   expected = [1, 1]
  #   assert_equal(expected, actual)
  # end
  #
  # def test_turn()
  #   @game.add_players(@player1)
  #   @game.add_players(@player2)
  #   actual = @game.turn(@player1)
  #   expected = 2
  #   assert_equal(expected, actual)
  # end


end
