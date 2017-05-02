module Enumerable
  def frequencies
    counts = Hash.new 0
    self.each{ |x| counts[x] += 1 }
    counts
  end
end

class Integer
  def is_divisible_by d
    self % d == 0
  end

  def prime_factors
    factors = []
    n = self
    d = 2
    while d * d <= n
      while n.is_divisible_by d
        factors << d
        n /= d
      end
      d += 1
    end
    factors << n if n > 1
    factors
  end

  def divisor_count
    self.prime_factors
      .frequencies
      .map{ |prime, freq| freq + 1 }
      .inject :*
  end
end

def triangle_generator
  Enumerator.new do |y|
    sum = 0
    n = 1
    loop do
      sum += n
      n += 1
      y.yield sum
    end
  end.lazy
end

def euler012 n
  triangle_generator.drop(1).each do |t|
    return t if t.divisor_count > n
  end
end