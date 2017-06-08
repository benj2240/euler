require_relative "euler050.rb"
require "test/unit"

class Euler050Tests < Test::Unit::TestCase
  def test_small
    input = 100
    expected = 41
    result = euler050 input
    assert_equal expected, result
  end

  def test_medium
    input = 1000
    expected = 953
    result = euler050 input
    assert_equal expected, result
  end

  def test_actual
    input = 1000000
    expected = 997651
    result = euler050 input
    assert_equal expected, result
  end
end