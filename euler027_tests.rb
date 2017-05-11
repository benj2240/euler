require_relative "euler027.rb"
require "test/unit"

class Euler027Tests < Test::Unit::TestCase
  def test_example
    input = 10
    expected = -21
    result = euler027 input
    assert_equal expected, result
  end

  def test_actual
    input = 1000
    expected = -59231
    result = euler027 input
    assert_equal expected, result
  end
end