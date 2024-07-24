def bubble_sort(array)
  n = array.length-1
  sortedArray = []
  swapped = true
  array.each do |num|
    sortedArray.push(num)
  end
  while swapped == true
    swapped = false
    for i in 1..n
      if sortedArray[i] < sortedArray[i - 1]
        temp = sortedArray[i]
        sortedArray[i] = sortedArray[i - 1]
        sortedArray[i - 1] = temp
        swapped = true
      end
      n = n-1
      p sortedArray
    end
  end
  sortedArray
end