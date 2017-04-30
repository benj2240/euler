require_relative "euler004.rb"
require "test/unit"

class Euler004Tests < Test::Unit::TestCase
  def test_example
    input = 2
    expected = 9009
    result = euler004 input
    assert_equal expected, result
  end

  def test_actual
    input = 3
    expected = 906609
    result = euler004 input
    assert_equal expected, result
  end
end