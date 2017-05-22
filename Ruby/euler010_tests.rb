require_relative "euler010.rb"
require "test/unit"

class Euler010Tests < Test::Unit::TestCase
  def test_example
    input = 10
    expected = 17
    result = euler010 input
    assert_equal expected, result
  end

  def test_actual
    input = 2000000
    expected = 142913828922
    result = euler010 input
    assert_equal expected, result
  end
end