require_relative "euler025.rb"
require "test/unit"

class Euler025Tests < Test::Unit::TestCase
  def test_example
    input = 3
    expected = 12
    result = euler025 input
    assert_equal expected, result
  end

  def test_actual
    input = 1000
    expected = 4782
    result = euler025 input
    assert_equal expected, result
  end
end