# we will only examine numbers below 1 million
MAX_VALUE = 1000000

class Integer
  def prime?
    @@primes ||= Integer.primes_up_to MAX_VALUE
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

  def digits
    to_s.chars.map &:to_i
  end

  def rotations
    digits.rotations.map &:to_i
  end
end

class Array
  def rotations
    (1...self.size).map{ |n| rotate n }
  end

  def to_i base = 10
    inject(0){ |n, d| n * base + d }
  end
end

def euler035 n
  throw "oopsie" if n > MAX_VALUE
  (2..n).count{ |x| x.prime? && x.rotations.all?(&:prime?) }
end