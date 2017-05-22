def pythagorean_triplet_with_sum sum
  (sum/2).ceil().downto(5) do |c|
    (c-1).downto(4) do |b|
      a = sum - b - c
      if a*a + b*b == c*c
        return [a, b, c]
      end
    end
  end
  throw "No pythagorean triplet with that sum exists"
end

def euler009 n
  triplet = pythagorean_triplet_with_sum n
  triplet.inject :*
end