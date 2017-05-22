class Integer
  def choose r
    (1..r).inject(1) do |product, i|
      product * (self + 1 - i) / i
    end
  end
end

def euler015 n
  (2*n).choose n
end