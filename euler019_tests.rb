require_relative "euler019.rb"
require "test/unit"

class Euler019Tests < Test::Unit::TestCase
  def test_actual
    expected = 171
    result = euler019
    assert_equal expected, result
  end
end