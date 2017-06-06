def euler040 n
  # 200000 because that happens to be enough for n = 6
  champernowne = (0..200000).map{|i| i.to_s}.join

  (0..n)
    .map{|i| champernowne[10**i].to_i}
    .inject(:*)
end