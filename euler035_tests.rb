require_relative "euler035.rb"
require "test/unit"

class Euler035Tests < Test::Unit::TestCase
  def test_example
    input = 100
    expected = 13
    result = euler035 input
    assert_equal expected, result
  end

  def test_actual
    input = 1000000
    expected = 55
    result = euler035 input
    assert_equal expected, result
  end
end