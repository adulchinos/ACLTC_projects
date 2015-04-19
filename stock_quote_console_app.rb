require 'stock_quote'

puts "choose a stock that youd like to know the opening price for:"
input = gets.chomp

stock = StockQuote::Stock.quote(input)
puts "the stock's opening bid is #{stock.open}" 
puts "the stock's realtime asking price is #{stock.ask_realtime}"
puts "the stock's realtime bid is #{stock.bid_realtime}"
