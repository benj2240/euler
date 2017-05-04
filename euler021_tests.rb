require_relative "euler021.rb"
require "test/unit"

class Euler021Tests < Test::Unit::TestCase
  def test_amicable_sum
    assert_equal 220, 284.amicable_sum
    assert_equal 284, 220.amicable_sum
  end

  def test_actual
    input = 10000
    expected = 31626
    result = euler021 input
    assert_equal expected, result
  end
end