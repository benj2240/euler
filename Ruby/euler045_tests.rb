require_relative "euler045.rb"
require "test/unit"

class Euler045Tests < Test::Unit::TestCase
  def test_first
    input = 1
    expected = 1
    result = euler045 input
    assert_equal expected, result
  end

  def test_second
    input = 2
    expected = 40755
    result = euler045 input
    assert_equal expected, result
  end

  def test_actual
    input = 3
    expected = 1533776805
    result = euler045 input
    assert_equal expected, result
  end
end