module Enumerable
  def product
    inject :*
  end

  def sum
    inject :+
  end
end

class Integer
  @@facts = [1]

  def factorial
    @@facts[self] ||= (1..self).product
  end

  def digits
    to_s.chars.map &:to_i
  end

  def factorial_digit_sum
    digits.map(&:factorial).sum
  end
end

def euler034
  # 7*9! < 9,999,999, so we can stop there
  (3..(7*9.factorial))
    .select{ |n| n == n.factorial_digit_sum }
    .sum
end