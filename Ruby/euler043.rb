module Enumerable
  def sum
    inject :+
  end
end

class Array
  def to_i
    join.to_i
  end
end

class Integer
  def divisible_by? d
    self % d == 0
  end
end

def divisibility_test digits
  digits
    .drop(1)
    .each_cons(3)
    .zip([2,3,5,7,11,13,17])
    .all?{ |trio, prime| trio.to_i.divisible_by? prime }
end

def euler043
  (0..9).to_a
    .permutation
    .select{ |perm| divisibility_test perm }
    .map{ |perm| perm.to_i }
    .sum
end