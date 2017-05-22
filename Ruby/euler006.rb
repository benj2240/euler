class Numeric
  def square
    self * self
  end
end

module Enumerable
  def sum
    self.inject :+
  end
end

def euler006 n
  # "In case of fire break out closed-form"
  # return (3*n**4 + 2*n**3 - 3*n**2 - 2*n)/12
  (1..n).sum**2 - (1..n).map{ |i| i**2 }.sum
end