require_relative "euler046.rb"
require "test/unit"

class Euler046Tests < Test::Unit::TestCase
  def test_euler046_actual
    expected = 5777
    result = euler046
    assert_equal expected, result
  end
end