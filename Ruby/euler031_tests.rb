require_relative "euler031.rb"
require "test/unit"

class Euler031Tests < Test::Unit::TestCase
  def test_actual
    input = 200
    expected = 73682
    result = euler031 input
    assert_equal expected, result
  end
end