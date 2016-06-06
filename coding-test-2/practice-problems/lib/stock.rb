
# Write a method that takes an array of stock prices (prices on days
# 0, 1, ...), and outputs the most profitable pair of days on which to
# first buy the stock and then sell the stock, e.g.: stock_picker( [ 44,
# 30, 24, 32, 35, 30, 40, 38, 2, 3 ] ) == [ 2, 6 ]

# return max profit value
def stock_picker(prices)
    min = prices.first
    maxProfit = 0
    prices.each do |price|
        min = price < min ? price : min
        maxProfit = maxProfit > (price - min) ? maxProfit : (price - min)
    end
    maxProfit
end

# return the days to get max profit
def stock_picker1(prices)
    maxProfit = 0
    res=[]
    (0..prices.length - 2).each do |i|
        (i + 1..prices.length - 1).each do |j|
            if prices[j] - prices[i] > maxProfit
                maxProfit = prices[j] - prices[i]
                res=[i,j]
            end
        end
    end
    res
end

puts stock_picker( [ 44, 30, 24, 32, 35, 30, 40, 38, 2, 3 ] )
puts stock_picker1( [ 44, 30, 24, 32, 35, 30, 40, 38, 2, 3 ] ) == [ 2, 6 ]