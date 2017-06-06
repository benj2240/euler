require_relative "euler043.rb"
require "test/unit"

class Euler043Tests < Test::Unit::TestCase
  def test_euler043_actual
    expected = 16695334890
    result = euler043
    assert_equal expected, result
  end
end