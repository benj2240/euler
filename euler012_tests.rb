require_relative "euler012.rb"
require "test/unit"

class Euler012Tests < Test::Unit::TestCase
  def test_example
    input = 5
    expected = 28
    result = euler012 input
    assert_equal expected, result
  end

  def test_actual
    input = 500
    expected = 76576500
    result = euler012 input
    assert_equal expected, result
  end
end