require_relative "euler003.rb"
require "test/unit"

class Euler003Tests < Test::Unit::TestCase
  def test_example
    input = 13195
    expected = 29
    result = euler003 input
    assert_equal expected, result
  end

  def test_actual
    input = 600851475143
    expected = 6857
    result = euler003 input
    assert_equal expected, result
  end
end