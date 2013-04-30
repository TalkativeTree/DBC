@index = 0

def binary_search(number, array)
  median  = array.length/2
  puts "Median #{array[median]}\n\n"
  index = 0
  while number != array[median]
    if number == array[median]
      return median
    elsif number > array[median]
      index = median
    puts "High Half Ran: #{array[median, array.length]}\n\n"
    binary_search(number, array[median, array.length])
    
    @index += median

  elsif number < array[median]

    puts "Low Half Ran: #{array[0, median]}\n\n"
    binary_search(number, array[0, median])

    @index -= median
  end
  
  puts @index.inspect
end

test_array = (0..8).to_a
binary_search(6, test_array)

p @index
# => true

# test_array = [13, 19,  24,  29,  32,  37,  43]
# puts binary_search(35, test_array) == -1
# # # => true



array_of_medians = [50,25,12,6,3,1]


  # return number if array[median]  == number
  # return -1     if array.length   == 1 && array[0] != number

  # elsif number == array[median]
  #   return number


p binary_search(20, [10,20,30,40,50,60,70,80])
