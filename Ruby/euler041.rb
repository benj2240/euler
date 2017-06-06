class Integer
  # We can afford a very slow (non-cached) prime check because
  #   the initial filter (pandigitality) does the heavy lifting
  def prime?
    !(2..(self**0.5)).any?{ |d| self % d == 0 }
  end
end

def euler041
  # We can skip 8 and 9-digit numbers, because the sum of the
  #   digits 1-8 is divisible by 3, and therefore no 8- or 9-
  #   digit pandigital number can be prime.
  7.downto(4).each do |number_of_digits|
    # Permutation kindly preserves order as much as possible
    # [1,2,3].permutation would enumerate in lexicographical order
    # So [3,2,1].permutation gives [3,2,1] [3,1,2] [2,3,1], etc
    number_of_digits.downto(1).to_a.permutation.each do |perm|
      number = perm.join.to_i
      return number if number.prime?
    end
  end
end