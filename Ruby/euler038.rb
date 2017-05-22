# Find the largest number F where F is the concatenation
#   of the products of X with (1..N), and F
#   contains each of the digits 1-9 exactly once
# For example: X = 9, N = 5 => F = 918273645

# Let us assume that this example is NOT the maximum
# Then X is at least 2 digits, a 9 followed by a digit > 1
# In fact, X is probably 4 digits, with N = 2

def euler038
  (9213..9876)
    .map{ |x| x.to_s + (x*2).to_s }
    .select{ |f| f.chars.sort.join == "123456789" }
    .map{ |f| f.to_i }
    .max
end