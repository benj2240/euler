module Enumerable
  def sum
    inject :+
  end
end

def euler050 n
  prime_cache = Array.new(n + 1, true)

  (2..(n ** 0.5)).each do |p|
    next if !prime_cache[p]
    (2..(n/p)).each do |m|
      prime_cache[p*m] = false
    end
  end

  prime_list = (2..n).select{ |p| prime_cache[p] }

  best_prime = 2
  most_parts = 1

  prime_list.each_with_index do |p, i|
    break if prime_list[i ... i + most_parts].sum > n
    (most_parts + 1 .. prime_list.size - i).each do |parts|
      sum = prime_list[i ... i + parts].sum
      break if sum > n
      if prime_cache[sum]
        best_prime = sum
        most_parts = parts
      end
    end
  end

  best_prime
end