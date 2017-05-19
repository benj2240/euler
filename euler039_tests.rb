require_relative "euler039.rb"
require "test/unit"

class Euler039Tests < Test::Unit::TestCase
  def test_tiny
    input = 15
    expected = 12
    result = euler039 input
    assert_equal expected, result
  end

  def test_small
    input = 70
    expected = 60
    result = euler039 input
    assert_equal expected, result
  end

  def test_actual
    input = 1000
    expected = 840
    result = euler039 input
    assert_equal expected, result
  end
end