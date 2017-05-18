require_relative "euler038.rb"
require "test/unit"

class Euler038Tests < Test::Unit::TestCase
  def test_actual
    expected = 932718654
    result = euler038
    assert_equal expected, result
  end
end