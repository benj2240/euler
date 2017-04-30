require_relative "euler006.rb"
require "test/unit"

class Euler006Tests < Test::Unit::TestCase
  def test_example
    input = 10
    expected = 2640
    result = euler006 input
    assert_equal expected, result
  end

  def test_actual
    input = 100
    expected = 25164150
    result = euler006 input
    assert_equal expected, result
  end
end