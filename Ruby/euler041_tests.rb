require_relative "euler041.rb"
require "test/unit"

class Euler041Tests < Test::Unit::TestCase
  def test_euler041_actual
    expected = 7652413
    result = euler041
    assert_equal expected, result
  end
end