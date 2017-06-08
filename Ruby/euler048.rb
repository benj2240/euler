module Enumerable
  def sum
    inject :+
  end
end

def euler048 n
  (1..n).map{ |x| x ** x }.sum.to_s[-10..-1]
end