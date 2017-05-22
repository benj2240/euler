require_relative "euler032.rb"
require "test/unit"

class Euler032Tests < Test::Unit::TestCase
  def test_actual
    expected = 45228
    result = euler032
    assert_equal expected, result
  end
end