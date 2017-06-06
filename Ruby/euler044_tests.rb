require_relative "euler044.rb"
require "test/unit"

class Euler044Tests < Test::Unit::TestCase
  def test_euler044_actual
    expected = 5482660
    result = euler044
    assert_equal expected, result
  end
end