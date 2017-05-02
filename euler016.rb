module Enumerable
  def sum
    inject :+
  end
end

class Integer
  def digit_sum
    to_s.chars.map{ |c| c.to_i }.sum
  end
end

def euler016 n
  (2**n).digit_sum
end