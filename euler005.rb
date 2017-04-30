class Integer
  def divisible_by d
    self % d == 0
  end

  def prime_factors
    factors = []
    n = self
    d = 2
    while d * d <= n
      while n.divisible_by d
        factors << d
        n /= d
      end
      d += 1
    end
    factors << n if n > 1
    factors
  end
end

module Enumerable
  def frequencies
    freq = Hash.new 0
    self.each do |item|
      freq[item] += 1
    end
    freq
  end
end

class Hash
  def union other
    self.merge(other){ |k, v1, v2| [v1, v2].max }
  end
end

def euler005 max
  (2..max).map{ |n| n.prime_factors.frequencies }
    .reduce{ |all_factors, factors| all_factors.union factors }
    .map{ |factor, frequency| factor ** frequency }
    .reduce :*
end