def naturals
  (1..Float::INFINITY).lazy
end

def odds
  naturals.map{ |n| n * 2 - 1 }
end

class Integer
  @@prime = [false, false, true]

  def prime?
    return @@prime[self] if !@@prime[self].nil?

    return (@@prime[self] = false) if self.divisible_by? 2

    @@prime[self] = odds
      .drop(1)
      .take_while{ |d| d * d <= self }
      .none?{ |d| self.divisible_by? d }
  end

  def divisible_by? d
    self % d == 0
  end

  def composite?
    self > 1 && !self.prime?
  end
end

def squares_up_to n
  naturals.map{ |x| x * x }
    .take_while{ |sq| sq < n }
end

def euler046
  odds
    .select{ |n| n.composite? }
    .select{ |n| naturals
      .map{ |x| n - 2 * x * x }
      .take_while{ |p| p > 0 }
      .none?{ |p| p.prime? } }
    .first
end