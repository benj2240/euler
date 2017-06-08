class Integer
  @@primes = [false, false, true]
  
  def prime?
    return @@primes[self] if !@@primes[self].nil?
    
    @@primes[self] = (2..(self ** 0.5))
      .none?{ |d| self % d == 0 }
  end
  
  def permutation_of? other
    self.to_s.chars.sort == other.to_s.chars.sort
  end
end

def euler049
  triplets = []
  
  (1000..9999).each do |a|
    next if !a.prime?
    (1..5000).each do |k|
      b, c = a + k, a + 2 * k
      break if c > 9999
      if b.permutation_of?(a) &&
        c.permutation_of?(a) &&
        b.prime? &&
        c.prime?
      
        triplets << "#{a}#{b}#{c}"
      end
    end
  end
  
  triplets
end