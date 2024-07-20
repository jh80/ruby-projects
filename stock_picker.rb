
def stock_picker(array)
  bestDays = []
  maxDif = 0
  array.each_with_index do |buyPrice, buyDay|
    for sellDay in (buyDay+1)...array.length
      if (array[sellDay] - buyPrice) > maxDif
        maxDif = array[sellDay] - buyPrice
        bestDays = [buyDay, sellDay]
      end
    end
  end
  bestDays
end

print stock_picker([17,3,6,9,15,8,6,1,10])