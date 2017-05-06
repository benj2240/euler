module Enumerable
  def sum
    inject :+
  end
end

class Integer
  def divisible_by? d
    self % d == 0
  end

  def divisors
    (1..(self**0.5).floor)
      .select{ |d| self.divisible_by? d }
      .map{ |d| [d, self / d] }
      .flatten
      .uniq
  end

  def abundant?
    divisors.sum - self > self
  end
end

def euler023
  search_cap = 28123
  abundant_numbers = []
  abundant_sums = Array.new(search_cap + 1, false)

  (1..search_cap).each do |n|
    if n.abundant?
      abundant_numbers << n
      abundant_numbers.each do |a|
        s = a + n
        if s <= search_cap
          abundant_sums[s] = true
        end
      end
    end
  end

  abundant_sums
    .each_with_index
    .map{ |s, i| abundant_sums[i] ? 0 : i }
    .sum
end