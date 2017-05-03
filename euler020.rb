module Enumerable
  def sum
    inject :+
  end
end

class Integer
  def digits
    self.to_s.chars.map &:to_i
  end

  def factorial
    (2..self).inject :*
  end
end

def euler020 n
  n.factorial.digits.sum
end