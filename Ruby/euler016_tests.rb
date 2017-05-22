require_relative "euler016.rb"
require "test/unit"

class Euler016Tests < Test::Unit::TestCase
  def test_example
    input = 15
    expected = 26
    result = euler016 input
    assert_equal expected, result
  end

  def test_actual
    input = 1000
    expected = 1366
    result = euler016 input
    assert_equal expected, result
  end
end