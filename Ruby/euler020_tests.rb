require_relative "euler020.rb"
require "test/unit"

class Euler020Tests < Test::Unit::TestCase
  def test_example
    input = 10
    expected = 27
    result = euler020 input
    assert_equal expected, result
  end

  def test_actual
    input = 100
    expected = 648
    result = euler020 input
    assert_equal expected, result
  end
end