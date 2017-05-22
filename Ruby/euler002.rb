module Enumerable
  def sum
    self.inject :+
  end
end

def fibonacci_generator
  Enumerator.new do |y|
    a = 1
    b = 1
    loop do
      y.yield a
      a, b = b, a + b
    end
  end
end

def euler002 n
  fibonacci_generator
    .take_while{ |f| f < n }
    .select{ |f| f.even? }
    .sum
end