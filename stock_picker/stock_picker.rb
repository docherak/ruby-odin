def stock_picker(stocks)
  hash={buy: 0, sell: 0}
  max=0
    stocks.each_with_index do |buy,i|
    stocks.each_with_index do |sell,j|
      if j>i && stocks[j]-stocks[i] > max
        max = stocks[j]-stocks[i]
        hash[:buy]=i
        hash[:sell]=j
      end
    end
  end
  hash
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
