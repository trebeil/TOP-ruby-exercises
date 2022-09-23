def bubble_sort(array)
  sorted = false
  while sorted == false do
    sorted = true
    for index in (0..array.length-2)
      if array[index] > array[index+1]
        temp = array[index]
        array[index] = array[index+1]
        array[index+1] = temp
        sorted = false
      end
    end
  end
  array
end