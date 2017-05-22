require_relative "euler001.rb"
require "test/unit"

class Euler001Tests < Test::Unit::TestCase
  def test_example
    input = 10
    expected = 23
    result = euler001 input
    assert_equal expected, result
  end

  def test_actual
    input = 1000
    expected = 233168
    result = euler001 input
    assert_equal expected, result
  end
end