require_relative "euler042.rb"
require "test/unit"

class Euler042Tests < Test::Unit::TestCase
  def test_euler042_actual
    expected = 162
    result = euler042
    assert_equal expected, result
  end
end