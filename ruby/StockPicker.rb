def stock_picker(prices)
  best_price = 0
  best_index = 0
  best_index2 = 0
  prices2 = prices
  
  prices.each_with_index{
    |x, x_index|
    prices2.each_with_index {
      #Brute force search for the best stock price with two each loops
      |y, y_index|
      puts "x is #{x} index: #{x_index} and y is #{y} with #{y_index}"
      #Check the second loop's index is >= the first to ensure buy day is negative
      if (-x+y) > best_price and y_index >= x_index
        best_price = -x+y
        best_index = x_index
        best_index2 = y_index
      end
    }
  }
  #puts "best price: #{best_price} best day to buy: #{best_index} best day to sell: #{best_index2}"
  return([best_index, best_index2])
end

stock_picker([17,3,6,9,15,8,6,1,10])