# All 1-9 pandigital products are either of the form
#   X*XXXX=XXXX or XX*XXX=XXXX
# If we examine all possible permutations of 5 nonzero digits,
#   and use them to build the left half of those expressions,
#   checking each expression for pandigitality, we will
#   perform a mere ~30,000 checks.

class Integer
  def digits
    to_s.chars.map &:to_i
  end
end

class Array
  def to_i
    inject(0){ |number, digit| number*10 + digit }
  end

  def sum
    inject :+
  end
end

def euler032
  digits = (1..9).to_a
  products = []

  digits.permutation(5).each do |left|
    right = digits - left

    # X*XXXX=XXXX
    z = (left[0] * left[1..-1].to_i)
    if z.digits.sort == right
      products << z
    end

    # XX*XXX=XXXX
    z = (left[0..1].to_i * left[2..-1].to_i)
    if z.digits.sort == right
      products << z
    end
  end

  products.uniq.sum
end