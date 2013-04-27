def binary_search(number, array)
  low     = 0
  high    = array.length
  median  = (low + high) / 2

  until array(median) == number
    if number > array(median)
      low = median
      median = (low + high) / 2
    elsif number < array(median)
      high = median
      median = (low + high) / 2
    end
  end

  return median
end

a = [0,1,2,3,4,5,6]

binary_search(a)

