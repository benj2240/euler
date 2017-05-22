# Reasoning to expect a cubic function:
# - The natural numbers increase linearly
# - The length of the size of a spiral increases linearly
# - Therefore the numbers proceeding along a diagonal of a spiral
#   increase quadratically
# - The sum of constant numbers increases linearly
# - So the sum of quadratic numbers increases as a cube
# From there it's just a matter of finding the coefficients
def euler028 n
  (4*n**3 + 3*n**2 + 8*n - 9) / 6
end
