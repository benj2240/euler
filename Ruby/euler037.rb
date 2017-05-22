module Enumerable
  def sum
    inject :+
  end
end

class Integer
  def divisible_by? d
    self % d == 0
  end

  def prime?
    return false if self < 2
    (2..Math.sqrt(self)).all? do |d|
      !divisible_by? d
    end
  end

  def add_digit d
    self * 10 + d
  end

  def strip_leftmost_digit
    self.to_s[1..-1].to_i
  end
end

def right_truncatable_primes
  primes = [2, 3, 5, 7]
  prime = 0
  addable_digits = [1, 3, 7, 9]
  right_truncatables = []

  while prime = primes.shift
    addable_digits.each do |d|
      candidate = prime.add_digit d
      if candidate.prime?
        right_truncatables << candidate
        primes << candidate
      end
    end
  end

  right_truncatables
end

def is_left_truncatable_prime? n
  while n > 10
    n = n.strip_leftmost_digit
    return false if !n.prime?
  end
  true
end

def truncatable_primes
  right_truncatable_primes.select{ |p| is_left_truncatable_prime? p }
end

def euler037
  truncatable_primes.sum
end