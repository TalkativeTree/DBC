def shuffle(array)
  array.sample(array.length)
end
 
def shuffle_with_random(array)
  shuffled_array = array.dup 

  shuffled_array.each do  
    rand_elem = rand(shuffled_array.length)
    shuffled_array << shuffled_array.delete_at(rand_elem)
  end

  shuffled_array
end
# Driver code:
sorted_array = (1..10).to_a
 
# This should print a different sequence of numbers each time
p shuffle(sorted_array)
p shuffle(sorted_array)
p shuffle(sorted_array)
 
p shuffle_with_random(sorted_array)
p shuffle_with_random(sorted_array)
p shuffle_with_random(sorted_array)

# => [1, 6, 7, 2, 9, 3, 5, 10, 8, 4]
# => [5, 2, 9, 1, 3, 7, 8, 6, 10, 4]
# => [5, 2, 10, 7, 3, 8, 4, 1, 9, 6]

# => [3, 5, 7, 9, 8, 2, 10, 4, 6, 1]
# => [4, 7, 9, 10, 3, 2, 6, 5, 1, 8]
# => [2, 3, 6, 7, 8, 1, 5, 4, 10, 9]
