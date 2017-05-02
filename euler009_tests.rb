require_relative "euler009.rb"
require "test/unit"

class Euler009Tests < Test::Unit::TestCase
  def test_small
    # 5*5 + 12*12 = 13*13
    input = 30 # 5 + 12 + 13
    expected = 780 # 5 * 12 * 13
    result = euler009 input
    assert_equal expected, result
  end

  def test_actual
    input = 1000
    expected = 31875000
    result = euler009 input
    assert_equal expected, result
  end
end