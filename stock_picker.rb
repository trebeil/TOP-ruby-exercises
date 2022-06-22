def stock_picker(prices_array)
  best = [0,1]
  profit = prices_array[1]-prices_array[0]
  size = prices_array.length
  for day_buy in (0..(size-1))
    for day_sell in ((day_buy+1)..(size-1))
        if prices_array[day_sell] - prices_array[day_buy] > profit
          best[0] = day_buy
          best[1] = day_sell
          profit = prices_array[day_sell] - prices_array[day_buy]
        end
    end
  end
  best
end