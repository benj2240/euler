require_relative "euler023.rb"
require "test/unit"

class Euler023Tests < Test::Unit::TestCase
  def test_abundant
    assert_true 12.abundant?
    assert_true 60.abundant?
    assert_true 3600.abundant?
    assert_false 11.abundant?
    assert_false 28.abundant?
    assert_false 4.abundant?
  end

  def test_actual
    expected = 4179871
    result = euler023
    assert_equal expected, result
  end
end