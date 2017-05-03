module Enumerable
  def sum
    inject :+
  end
end

class Integer
  @@suffixes = [
    "",
    " thousand",
    " million",
    " billion",
    " trillion" # and so on
  ]

  @@small_names = [
    "zero",
    "one",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine",
    "ten",
    "eleven",
    "twelve",
    "thirteen",
    "fourteen",
    "fifteen",
    "sixteen",
    "seventeen",
    "eighteen",
    "nineteen"
  ]

  @@tens_names = [
    nil,
    nil,
    "twenty",
    "thirty",
    "forty",
    "fifty",
    "sixty",
    "seventy",
    "eighty",
    "ninety"
  ]

  def to_english commas = 0
    if self > 999
      other_groups = (self / 1000).to_english(commas + 1)
      rest = ""
      if self % 1000 > 0
        rest = ", " + (self % 1000).to_english(commas)
      end
      other_groups + rest
    elsif self > 99
      hundreds = @@small_names[self/100] + " hundred"
      rest = ""
      if self % 100 > 0
        rest = " and " + (self % 100).to_english(commas)
      else
        rest = @@suffixes[commas]
      end
      hundreds + rest
    elsif self > 19
      tens = @@tens_names[self/10]
      rest = ""
      if self % 10 > 0
        rest = "-" + (self % 10).to_english(commas)
      else
        rest = @@suffixes[commas]
      end
      tens + rest
    else # self <= 19
      @@small_names[self] + @@suffixes[commas]
    end
  end
end

def euler017 n
  (1..n).map{ |x| x.to_english.scan(/[a-z]/).length }.sum
end