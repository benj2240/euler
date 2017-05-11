require_relative "euler028.rb"
require "test/unit"

class Euler028Tests < Test::Unit::TestCase
  def test_example
    input = 5
    expected = 101
    result = euler028 input
    assert_equal expected, result
  end

  def test_actual
    input = 1001
    expected = 669171001
    result = euler028 input
    assert_equal expected, result
  end
end