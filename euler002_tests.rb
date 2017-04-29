require_relative "euler002.rb"
require "test/unit"

class Euler002Tests < Test::Unit::TestCase
  def test_example
    input = 100
    expected = 44
    result = euler002 input
    assert_equal expected, result
  end

  def test_actual
    input = 4000000
    expected = 4613732
    result = euler002 input
    assert_equal expected, result
  end
end