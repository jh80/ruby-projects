def bubble_sort(array)
  n = array.length
  sortedArray = []
  swapped = false
  array.each_with_index do |num, i|
    if array [i + 1] == nil
      break
    end
    if num > array[i + 1]
      sortedArray[i] = array[i + 1]
      sortedArray[i + 1] = array [i]
      swapped = true
    else 
      sortedArray[i] = array [i]
      sortedArray[i + 1] = array [i + 1]
    end
  end
  if swapped == true
    n = n - 2
  end
  while swapped == true
    swapped = false
    for i in 0...n
      if sortedArray[i] > sortedArray[i + 1]
        temp = sortedArray[i]
        sortedArray[i] = sortedArray[i + 1]
        sortedArray[i + 1] = temp
        swapped = true
        n = n-1
      end
    end
  end
  sortedArray
end