require 'minitest/autorun'
require 'minitest/rg'
require_relative '../snake_ladder'

class TestSnakeLadder < MiniTest::Test

  def setup()
    @snake1 = SnakeLadder.new("snake1", 99, 5)
    @ladder1 = SnakeLadder.new("ladder1", 3, 10)
  end

  def test_name__snake()
    actual = @snake1.name()
    expected = "snake1"
    assert_equal(expected, actual)
  end

  def test_name()
    actual = @snake1.name()
    expected = "snake1"
    assert_equal(expected, actual)
  end

  def test_start_square()
    actual = @snake1.start()
    expected = 99
    assert_equal(expected, actual)
  end

  def test_end_square()
    actual = @snake1.end()
    expected = 5
    assert_equal(expected, actual)
  end

end
