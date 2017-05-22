# n^2 + an + b, where a, b <= 1000
MAX_FUNCTION_VALUE = 1000*1000 + 1000*1000 + 1000

class Integer
  def prime?
    @@primes ||= Integer.primes_up_to MAX_FUNCTION_VALUE
    @@primes[self]
  end

  # A sieve of Eratosthenes, returning an array of booleans
  def self.primes_up_to cap
    is_prime = Array.new(cap + 1, true)
    is_prime[0] = false
    is_prime[1] = false
    
    (2..cap).each do |n|
      next if !is_prime[n]
      (2..(cap/n).floor).each do |m|
        is_prime[n*m] = false
      end
    end

    return is_prime
  end
end

def consecutive_prime_count a, b
  f = lambda { |n| n * n + a * n + b }
  (0..b).take_while{ |n| f.call(n).prime? }.count
end

def euler027 n
  max_count = 0
  best_product = 0
  (-n+1...n).each do |a|
    (-n..n).each do |b|
      count = consecutive_prime_count a, b
      if count > max_count
        max_count = count
        best_product = a * b
      end
    end
  end
  best_product
end