module Enumerable
  def sum
    inject :+
  end
end

class Integer
  def divisible_by? d
    self % d == 0
  end

  # This is O(sqrt(n)) time, which is OK because N <= 10000
  def divisors
    (1..(self**0.5).floor)
      .select{ |d| self.divisible_by? d }
      .map{ |d| [d, self / d].uniq }
      .flatten
  end

  def amicable_sum
    # divisors includes 1 and self, but self is not a "proper" divisor.
    divisors.sum - self
  end
end

def euler021 n
  # Doing some duplicate work here, calculating amicable_sum twice
  # for each member of an amicable pair. Still takes < 0.25s to run.
  (2..n).select do |a|
    b = a.amicable_sum
    b != a && b.amicable_sum == a
  end.sum
end