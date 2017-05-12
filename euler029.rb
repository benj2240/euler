def euler029 n
  (2..n).map{ |a| (2..n).map{ |b| a**b } }
    .flatten
    .uniq
    .count
end