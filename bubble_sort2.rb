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
        # One of the other students (JohnDevHelix) wrote their parallel assignment like: array[(i-1)..i] = array[(i-1)..i].reverse   which I thought was cool 
        sortedArray[i], sortedArray[i - 1] = sortedArray[i - 1],sortedArray[i]
        swapped = true
      end
    end
    n = n-1
  end
  sortedArray
end