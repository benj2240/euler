require_relative "euler018.rb"
require "test/unit"

class Euler018Tests < Test::Unit::TestCase
  def test_actual
    expected = 1074
    result = euler018
    assert_equal expected, result
  end
end