class Integer
  @@collatz_lengths = {1 => 1}
  
  def collatz_next
    even? ? self/2 : 3 * self + 1
  end

  def collatz_length
    @@collatz_lengths[self] ||= 1 + collatz_next.collatz_length
  end
end

def euler014 n
  (1...n).max_by{ |x| x.collatz_length }
end