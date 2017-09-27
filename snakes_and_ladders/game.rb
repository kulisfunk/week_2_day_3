#require_relative 'player'
#require_relative 'dice'


class Game
  def initialize(name)
    @name = name
    @num_players = []
    @position = []
    @turn = 1
  end

  def game_name()
    return @name
  end

  def num_of_players()
    return @num_players.count
  end

  def add_players(player)
    @num_players << player
    return @num_players.count
  end

  def start_game()
    @num_players.count.times do @position << 1
    end
    return @position
  end


  def update_position(dice)
    @position[0] += @num_players[0].roll_dice(dice)
    return position [0]
  end



  def end_game()
    if @position[0] == 10
      puts "Martin wins"
    elsif @position[1] == 10
      puts "Louise wins"
    end
  end


end

# def game_start()
#   @game = Game.new("Snakes and Ladders")
#   @player1 = Player.new("Martin", "red")
#   @player2 = Player.new("Louise", "green")
#   @dice = Dice.new()
#   @game.start_game()
#
#   puts "Welcome to Snakes and Ladders!!!"
#   puts "Press any key to start"
#   gets.chomp
#   puts "We have two players, Martin and Louise"
#
#   puts "Martin to go first, press key to roll dice"
#   gets.chomp
#   dice_roll =
#   puts dice_roll
#
#
#
#
#   @game.end_game
#
#
#
#
# end
#
# game_start()
