require_relative "euler030.rb"
require "test/unit"

class Euler030Tests < Test::Unit::TestCase
  def test_digit_cap
    power = 5
    expected = 6*9**5 - 1
    result = largest_possible_acceptable_number power
    assert_equal expected, result
  end

  def test_example
    input = 4
    expected = 19316
    result = euler030 input
    assert_equal expected, result
  end

  def test_actual
    input = 5
    expected = 443839
    result = euler030 input
    assert_equal expected, result
  end
end