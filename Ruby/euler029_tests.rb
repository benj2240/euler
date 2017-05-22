require_relative "euler029.rb"
require "test/unit"

class Euler029Tests < Test::Unit::TestCase
  def test_example
    input = 5
    expected = 15
    result = euler029 input
    assert_equal expected, result
  end

  def test_actual
    input = 100
    expected = 9183
    result = euler029 input
    assert_equal expected, result
  end
end