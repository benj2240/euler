class Integer
  def multiple_of? d
    self % d == 0
  end
end

def can_simplify a, b
  !b.multiple_of?(10) &&
    !b.multiple_of?(11) &&
    a % 10 == b / 10 &&
    (a / 10).to_r / (b % 10) == a.to_r / b
end

def euler033
  (11..98).map{ |a|
      (a+1..99).map{ |b|
          [a, b] } }
    .flatten(1)
    .select{ |a, b| can_simplify a, b }
    .map{ |a, b| a.to_r / b }
    .inject(:*)
    .denominator
end