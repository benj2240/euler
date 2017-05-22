require_relative "euler036.rb"
require "test/unit"

class Euler036Tests < Test::Unit::TestCase
  def test_example
    input = 10
    expected = 25
    result = euler036 input
    assert_equal expected, result
  end

  def test_actual
    input = 1000000
    expected = 872187
    result = euler036 input
    assert_equal expected, result
  end
end