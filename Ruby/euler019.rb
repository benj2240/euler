require 'date'

def euler019
  first = Date.new(1901,1,1)
  last = Date.new(2000,12,31)
  (first..last).count{ |d| d.day == 1 && d.sunday? }
end