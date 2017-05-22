require_relative "euler005.rb"
require "test/unit"

class Euler005Tests < Test::Unit::TestCase
  def test_example
    input = 10
    expected = 2520
    result = euler005 input
    assert_equal expected, result
  end

  def test_actual
    input = 20
    expected = 232792560
    result = euler005 input
    assert_equal expected, result
  end
end