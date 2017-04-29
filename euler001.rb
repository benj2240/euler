class Numeric
  def divisible_by d
    self % d == 0
  end
end

module Enumerable
  def sum
    self.inject :+
  end
end

def euler001 n
  (1...n)
    .select{ |n| n.divisible_by(3) || n.divisible_by(5) }
    .sum
end