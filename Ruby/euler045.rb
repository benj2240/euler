class Integer
  def hexagon
    self * ( 2 * self  - 1)
  end

  def pentagonal?
    self.inverse_pentagon.round.pentagon == self
  end

  def pentagon
    self * (3 * self - 1) / 2
  end

  def inverse_pentagon
    1.0 / 6 + (2.0 / 3 * self + 1.0 / 36) ** 0.5
  end

  def triangular?
    self.inverse_triangle.round.triangle == self
  end

  def triangle
    self * (self + 1) / 2
  end

  def inverse_triangle
    -1.0/2 + (self * 2 + 0.25) ** 0.5
  end
end

def euler045 n
  (1..Float::INFINITY)
    .lazy
    .map{ |x| x.hexagon }
    .select{ |h| h.triangular? && h.pentagonal? }
    .take(n)
    .to_a
    .last
end