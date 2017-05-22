require_relative "euler008.rb"
require "test/unit"

class Euler008Tests < Test::Unit::TestCase
  def test_example
    input = 4
    expected = 5832
    result = euler008 input
    assert_equal expected, result
  end

  def test_actual
    input = 13
    expected = 23514624000
    result = euler008 input
    assert_equal expected, result
  end
end