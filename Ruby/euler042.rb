require 'set'

module Enumerable
  def sum
    inject :+
  end
end

class String
  def score
    chars.map{ |c| c.ord - 64 }.sum
  end
end

def get_words_filesystem
  File.read("../euler042_input.txt").scan(/[A-Z]+/)
end

def euler042
  # No need to worry about triangle numbers > 884. That's what
  #   Marry Poppins' word would score if it were all Z's.
  triangles = Set.new (1..42).map{ |n| n * (n + 1) / 2 }

  get_words_filesystem
    .map(&:score)
    .count{ |score| triangles.include? score }
end