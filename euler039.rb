def cantor_pairs
  Enumerator.new do |y|
    (0..Float::INFINITY).each do |sum|
      (0..sum).each do |n|
        y.yield [sum - n, n]
      end
    end
  end.lazy
end

def coprime? m, n
  m.gcd(n) == 1
end

def primitive_pythagorean_triplets
  cantor_pairs
    .select{ |m, n| m > n && n > 0 && (m + n).odd? && coprime?(m, n) }
    .map{ |m, n| [2*m*n, m*m - n*n, m*m + n*n] }
end

def euler039 n
  sums = Hash.new 0

  # The sums of the triplets are not strictly increasing.
  # However, if the kth sum is smaller than the (k-1)th sum,
  #   then the kth sum is also smaller than the jth sum,
  #   for all j > k
  # In other words, each time the sequence "dips",
  #   all subsequent values will be above that trough.
  # So stop searching for triplets once there is a "dip" above N
  primitive_pythagorean_triplets
    .map{ |a, b, c| a + b + c }
    .each_cons(2)
    .take_while{ |sum, next_sum| sum > next_sum || sum <= n }
    .each{ |sum, _| (1..n/sum)
      .each{ |factor| sums[sum * factor] += 1 } }

  sum, triplet_count = sums.max_by{ |s, count| count }
  return sum
end