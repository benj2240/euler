require_relative "euler037.rb"
require "test/unit"

class Euler037Tests < Test::Unit::TestCase
  def test_generate_right_truncatables
    right_truncatables = right_truncatable_primes
    assert_true right_truncatables.include? 3797
  end

  def test_check_left_truncatable
    input = 3797
    result = is_left_truncatable_prime? input
    assert_true result
  end

  def test_eleven_truncatable_primes
    expected = 11
    result = truncatable_primes().count
    assert_equal expected, result
  end

  def test_actual
    expected = 748317
    result = euler037
    assert_equal expected, result
  end
end