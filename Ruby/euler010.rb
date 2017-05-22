module Enumerable
  def sum
    self.inject :+
  end
end

# An implementation of the Sieve of Eratosthenes
def primes_up_to cap
  Enumerator.new do |y|
    is_prime = Array.new(cap + 1, true)
    is_prime[0] = false
    is_prime[1] = false
    (2..cap).each do |n|
      next if !is_prime[n]
      y.yield n
      (2..(cap/n).floor).each do |m|
        is_prime[n*m] = false
      end
    end
  end
end

def euler010 n
  primes_up_to(n).sum
end