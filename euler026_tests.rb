require_relative "euler026.rb"
require "test/unit"

class Euler026Tests < Test::Unit::TestCase
  def test_example
    input = 10
    expected = 7
    result = euler026 input
    assert_equal expected, result
  end

  def test_actual
    input = 1000
    expected = 983
    result = euler026 input
    assert_equal expected, result
  end
end