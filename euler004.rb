class Integer
  def palindrome?
    string = self.to_s
    string == string.reverse
  end
end

def max_palindrome_multiple multiplicand, previous_maximum_multiple
  multiplicand.downto(0) do |factor|
    multiple = multiplicand * factor
    return multiple if multiple.palindrome?
    return 0 if multiple <= previous_maximum_multiple
  end
end

def euler004 n
  max_factor = 10 ** n - 1
  largest_palindrome = 0

  max_factor.downto(0) do |multiplicand|
    return largest_palindrome if multiplicand * multiplicand < largest_palindrome
    multiple = max_palindrome_multiple multiplicand, largest_palindrome
    largest_palindrome = multiple if multiple > largest_palindrome
  end
end