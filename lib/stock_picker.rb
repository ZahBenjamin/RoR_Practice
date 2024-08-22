# Implement method stock_picker that takes an array of stock prices, one for each hypothetical day, should return pair of days representing best days to buy

def stock_picker(prices)
  output = nil
  best_profit = 0

  prices.each_with_index do |buy_price, buy_day|
    prices[buy_day + 1..].each_with_index do |sell_price, sell_day|
      profit = sell_price - buy_price
      sell_day_absolute = buy_day + 1 + sell_day

      if profit > best_profit
        best_profit = profit 
        output = [buy_day, sell_day_absolute]
      end
    end
  end

  output
end



puts stock_picker([17,3,6,9,15,8,6,1,10])