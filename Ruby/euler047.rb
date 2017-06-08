class Integer
  def prime_factors
    n = self
    factors = []
    d = 2
    while d * d <= n
      while n % d == 0
        n /= d
        factors << d
      end
      d += 1
    end
    factors << n if n > 1
    factors
  end

  def prime_factor_count
    prime_factors.uniq.count
  end
end

def euler047 n
  (1..Float::INFINITY)
    .lazy
    .each_cons(n)
    .select{ |xs| xs
      .all?{ |x| x.prime_factor_count >= n } }
    .first
    .first
end