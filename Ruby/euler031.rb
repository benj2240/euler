def ways_to_make amount, coins
  ways = Array.new(amount + 1, 0)
  ways[0] = 1

  # for any coin valued C
  # for any amount A >= C
  # The number of ways to make A with C is
  #   the number of ways to make A without C, plus
  #   the number of ways to make A-C (with or without C)
  coins.each do |coin|
    (coin..amount).each do |amt|
      ways[amt] += ways[amt - coin]
    end
  end

  ways[amount]
end

def euler031 n
  coins = [1, 2, 5, 10, 20, 50, 100, 200]
  ways_to_make n, coins
end