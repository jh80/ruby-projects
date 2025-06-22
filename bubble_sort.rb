def bubble_sort(array)
  swapped = true
  while swapped == true do
    swapped = false
    array.each_with_index do |num, index|
      if index == array.length - 1
        break
      end
      if num > array[index+1]
        array[index], array[index+1] = array[index+1], array[index]
        swapped = true
      end
    end
  end
  array
end