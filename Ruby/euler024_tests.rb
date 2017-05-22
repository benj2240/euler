require_relative "euler024.rb"
require "test/unit"

class Euler024Tests < Test::Unit::TestCase
  def test_actual
    expected = 2783915460
    actual = euler024
    assert_equal expected, result
  end
end