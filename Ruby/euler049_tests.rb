require_relative "euler049.rb"
require "test/unit"

class Euler049Tests < Test::Unit::TestCase
  def test_actual
    expected = ["148748178147","296962999629"]
    result = euler049
    assert_equal expected, result
  end
end