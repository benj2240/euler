require_relative "euler034.rb"
require "test/unit"

class Euler034Tests < Test::Unit::TestCase
  def test_actual
    expected = 40730
    result = euler034
    assert_equal expected, result
  end
end