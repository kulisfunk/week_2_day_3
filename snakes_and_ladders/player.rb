class Player
  def initialize(name, colour)
    @name = name
    @colour = colour

  end

  def roll_dice(dice)
    return dice.dice_roll()
  end

  def name()
    return @name
  end
end
