require_relative "euler040.rb"
require "test/unit"

class Euler040Tests < Test::Unit::TestCase
  def test_euler040_actual
    input = 6
    expected = 210
    result = euler040 input
    assert_equal expected, result
  end
end