require "set"

class Integer
  def reciprocal_cycle_length base = 10
    length = 1
    distinct_remainders = Set.new
    remainder = 1
    while distinct_remainders.add? remainder
      length += 1
      remainder = remainder * base % self
    end
    length
  end
end

def euler026 n
  (1..n).max_by{ |x| x.reciprocal_cycle_length }
end