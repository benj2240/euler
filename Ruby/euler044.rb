class Integer
  def pentagonal?
    n = (1.0 / 6 + (2.0 / 3 * self + 1.0 / 36) ** 0.5).round
    n * (3 * n - 1) / 2 == self
  end
end

def euler044
  (2..Float::INFINITY).each do |k|
    pk = k * (3 * k - 1) / 2
    (k - 1).downto(1).each do |j|
      pj = j * (3 * j - 1) / 2
      if (pk + pj).pentagonal? && (pk - pj).pentagonal?
        return pk - pj
      end
    end
  end
end