# Reasoning to expect a cubic function:
# - The natural numbers increase linearly
# - The length of the size of a spiral increases linearly
# - Therefore the numbers proceeding along a diagonal of a spiral
#   increase quadratically
# - The sum of constant numbers increases linearly
# - So the sum of quadratic numbers increases as a cube
# From there it's just a matter of finding the coefficients
def euler028 n
  throw "all spirals have a positive odd integer size" if n.even? || n < 1
  x = (n - 1) / 2
  (16*x**3 + 30*x**2 + 26*x + 3) / 3
end