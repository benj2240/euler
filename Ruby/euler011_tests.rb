require_relative "euler011.rb"
require "test/unit"

class Euler011Tests < Test::Unit::TestCase
  def test_tiny
    input = 2
    expected = 9603 # 97*99
    result = euler011 input
    assert_equal expected, result
  end

  def test_actual
    input = 4
    expected = 70600674
    result = euler011 input
    assert_equal expected, result
  end
end