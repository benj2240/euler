require_relative "euler015.rb"
require "test/unit"

class Euler015Tests < Test::Unit::TestCase
  def test_example
    input = 2
    expected = 6
    result = euler015 input
    assert_equal expected, result
  end

  def test_actual
    input = 20
    expected = 137846528820
    result = euler015 input
    assert_equal expected, result
  end
end