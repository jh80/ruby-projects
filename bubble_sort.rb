def bubble_sort(array)
  swapped = true
  sortedArray = []
  while swapped == true do
    swapped = false
    array.each_with_index do |num, index|
      if index == array.length - 1
        break
      end
      if num > array[index+1]
        array[index] = array[index+1]
        array[index+1] = num
        swapped = true
      end
    end
  end
  sortedArray
end