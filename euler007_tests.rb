require_relative "euler007.rb"
require "test/unit"

class Euler007Tests < Test::Unit::TestCase
  def test_example
    input = 6
    expected = 13
    result = euler007 input
    assert_equal expected, result
  end

  def test_actual
    input = 10001
    expected = 104743
    result = euler007 input
    assert_equal expected, result
  end
end