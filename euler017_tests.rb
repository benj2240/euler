require_relative "euler017.rb"
require "test/unit"

class Euler017Tests < Test::Unit::TestCase
  def test_small_numbers
    assert_equal "zero", 0.to_english
    assert_equal "one", 1.to_english
    assert_equal "two", 2.to_english
    assert_equal "three", 3.to_english
    assert_equal "four", 4.to_english
    assert_equal "five", 5.to_english
    assert_equal "six", 6.to_english
    assert_equal "seven", 7.to_english
    assert_equal "eight", 8.to_english
    assert_equal "nine", 9.to_english
    assert_equal "ten", 10.to_english
    assert_equal "eleven", 11.to_english
    assert_equal "twelve", 12.to_english
    assert_equal "thirteen", 13.to_english
    assert_equal "fourteen", 14.to_english
    assert_equal "fifteen", 15.to_english
    assert_equal "sixteen", 16.to_english
    assert_equal "seventeen", 17.to_english
    assert_equal "eighteen", 18.to_english
    assert_equal "nineteen", 19.to_english
    assert_equal "twenty", 20.to_english
  end

  def test_hyphenated_numbers
    assert_equal "twenty-two", 22.to_english
    assert_equal "thirty-three", 33.to_english
    assert_equal "forty-four", 44.to_english
    assert_equal "fifty-five", 55.to_english
    assert_equal "sixty-six", 66.to_english
    assert_equal "seventy-seven", 77.to_english
    assert_equal "eighty-eight", 88.to_english
    assert_equal "ninety-nine", 99.to_english
  end

  def test_hundreds
    assert_equal "one hundred", 100.to_english
    assert_equal "two hundred and three", 203.to_english
    assert_equal "three hundred and forty-five", 345.to_english
  end

  def test_big_round_numbers
    assert_equal "nine hundred", 900.to_english
    assert_equal "two thousand", 2000.to_english
    assert_equal "sixty million", 60000000.to_english
    assert_equal "five billion", 5000000000.to_english
    assert_equal "seven hundred trillion", 700000000000000.to_english
  end

  def test_jenny
    expected = "eight million, six hundred and seventy-five thousand, three hundred and nine"
    assert_equal expected, 8675309.to_english
  end

  def test_max_int32
    expected = "two billion, one hundred and forty-seven million, four hundred and eighty-three thousand, six hundred and forty-seven"
    assert_equal expected, (2**31 - 1).to_english
  end

  def test_example
    input = 5
    expected = 19
    result = euler017 input
    assert_equal expected, result
  end

  def test_actual
    input = 1000
    expected = 21124
    result = euler017 input
    assert_equal expected, result
  end
end