require_relative "euler014.rb"
require "test/unit"

class Euler014Tests < Test::Unit::TestCase
  def test_example
    input = 15
    expected = 9
    result = euler014 input
    assert_equal expected, result
  end

  def test_actual
    input = 1000000
    expected = 837799
    result = euler014 input
    assert_equal expected, result
  end
end