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

def euler003 n
  n.prime_factors.max
end