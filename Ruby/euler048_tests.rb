require_relative "euler048.rb"
require "test/unit"

class Euler048Tests < Test::Unit::TestCase
  def test_euler048_example
    input = 10
    expected = "0405071317"
    result = euler048 input
    assert_equal expected, result
  end

  def test_euler048_actual
    input = 1000
    expected = "9110846700"
    result = euler048 input
    assert_equal expected, result
  end
end