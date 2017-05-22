require_relative "euler033.rb"
require "test/unit"

class Euler033Tests < Test::Unit::TestCase
  def test_actual
    expected = 100
    result = euler033
    assert_equal expected, result
  end
end