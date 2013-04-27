def binary_search(number, array)
    median  = array.length/2
    index   = 0
    tracker = 0
  
  while array.length > 0
    if number == array[median]
      return median
    end
    if number > array[median]
      
  end
end

p binary_search(20, [10,20,30,40,50,60,70,80])
