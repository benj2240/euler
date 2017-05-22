class Numeric
  def is_divisible_by d
    self % d == 0
  end
end

def prime_generator
  Enumerator.new do |y|
    primes = []
    (2..Float::INFINITY).each do |n|
      if primes.none?{ |prime| n.is_divisible_by prime }
        primes << n
        y.yield n
      end
    end
  end.lazy
end

def euler007 n
  prime_generator
    .drop(n-1)
    .take(1)
    .to_a
    .last
end