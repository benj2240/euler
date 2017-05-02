require_relative "euler013.rb"
require "test/unit"

class Euler013Tests < Test::Unit::TestCase
  def test_actual
    expected = 5537376230
    result = euler013
    assert_equal expected, result
  end
end