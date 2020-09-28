# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day.
# It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

#   > stock_picker([17,3,6,9,15,8,6,1,10])
#   => [1,4]  # for a profit of $15 - $3 == $12
# Quick Tips:

# You need to buy before you can sell
# Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.

stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(stock_prices)
  profit = 0
  max = 0
  min = stock_prices[0]
  day_to_buy = nil
  day_to_sell = nil
  min_i = 0
  stock_prices.each_with_index do |price, i|
    # in case current price is less than existing minimal
    if price < min
      min = price
      # remember minimum price index - day to buy stock
      min_i = i
    end

    # check the difference between prices
    # change min and max price is it's more profitable
    if price - min > profit
      profit = price - min
      max = price
      day_to_buy = min_i
      day_to_sell = i
    end
  end

  return [day_to_buy, day_to_sell]
end

p stock_picker(stock_prices)
