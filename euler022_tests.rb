require_relative "euler022.rb"
require "test/unit"

class Euler022Tests < Test::Unit::TestCase
  def test_actual
    expected = 871198282
    result = euler022
    assert_equal expected, result
  end
end