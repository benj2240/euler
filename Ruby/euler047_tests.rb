require_relative "euler047.rb"
require "test/unit"

class Euler047Tests < Test::Unit::TestCase
  def test_euler047_one
    input = 1
    expected = 2
    result = euler047 input
    assert_equal expected, result
  end

  def test_euler047_two
    input = 2
    expected = 14
    result = euler047 input
    assert_equal expected, result
  end

  def test_euler047_three
    input = 3
    expected = 644
    result = euler047 input
    assert_equal expected, result
  end

  def test_euler047_actual
    input = 4
    expected = 134043
    result = euler047 input
    assert_equal expected, result
  end
end