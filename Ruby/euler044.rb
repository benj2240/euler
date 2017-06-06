class Integer
  def pentagonal?
    self.inverse_pentagon.round.pentagon == self
  end

  def pentagon
    self * (3 * self - 1) / 2
  end

  def inverse_pentagon
    1.0 / 6 + (2.0 / 3 * self + 1.0 / 36) ** 0.5
  end
end

def euler044
  (1..Float::INFINITY).each do |k|
    pk = k.pentagon

    (k - 1).downto(1).each do |j|
      pj = j.pentagon

      if (pk + pj).pentagonal? && (pk - pj).pentagonal?
        return pk - pj
      end
    end
  end
end