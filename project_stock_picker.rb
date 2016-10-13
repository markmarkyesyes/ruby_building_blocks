=begin
Project 2: Stock Picker

Your Task
Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

You need to buy before you can sell
Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.



=end
def stock_picker(stock_prices)
	buy_sell_days = []
	max_profit = 0

	stock_prices.each_with_index do |buy_price, buy_day|
		stock_prices.each_with_index do |sell_price, sell_day|
			profit = sell_price - buy_price

			if buy_day < sell_day && buy_day != stock_prices[-1] 

				if profit > max_profit
					max_profit = profit
					buy_sell_days.clear
					buy_sell_days<<buy_day
					buy_sell_days<<sell_day
				end

			end

		end

	end

	return "buy day #{buy_sell_days[0]+1}, sell day #{buy_sell_days[1]+1} for a profit of $#{max_profit}"
end

p stock_picker([17,3,6,9,15,8,6,1,10])