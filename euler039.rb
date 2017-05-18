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
  m.gcd n == 1
end

def primitive_pythagorean_triplets
  cantor_pairs
    .select{ |m, n| m > n && n > 0 && (m + n).odd? && coprime? m, n }
    .map{ |m, n| [2*m*n, m*m - n*n, m*m + n*n] }
end

def euler039 n
  sums = Hash.new 0
  primitive_pythagorean_triplets.each do |a, b, c|
    sum = a + b + c
    (1..n/sum).each do |factor|
      sums[sum * factor] += 1
    end
  end
  sums.max_by{ |sum, triplet_count| triplet_count }
end