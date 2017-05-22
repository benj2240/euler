def fibonacci_generator
  Enumerator.new do |y|
    a = 0
    b = 1
    y.yield a
    loop do
      a, b = b, a + b
      y.yield a
    end
  end
end

def euler025 n
  cap = 10 ** (n - 1)
  fibonacci_generator.take_while{ |f| f < cap }.count
end