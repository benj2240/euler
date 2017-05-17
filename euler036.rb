module Enumerable
  def sum
    inject :+
  end
end

class Integer
	def palindromic? base = 10
    str = self.to_s base
    str == str.reverse
	end
end

def euler036 n
  (1...n)
    .select{ |x| x.palindromic?(2) && x.palindromic?(10) }
    .sum
end