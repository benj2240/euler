module Enumerable
  def sum
    inject :+
  end
end

class Integer
  def acceptable? power
    self == self.to_s.chars.map{ |c| c.to_i**power }.sum
  end
end

def natural_numbers
  (1..Float::INFINITY).lazy
end

def largest_possible_acceptable_number power
  max_power = natural_numbers.find{ |d| d*9**power < 10**d }
  max_power*9**power - 1
end

def euler030 n
  (2..largest_possible_acceptable_number(n))
    .select{ |x| x.acceptable? n }
    .sum
end