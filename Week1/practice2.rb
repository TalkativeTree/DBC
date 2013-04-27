array = [ ["E", "R", "T", "O"], 
          ["W", "U", "T", "T"], 
          ["L", "O", "M", "U"], 
          ["E", "A", "N", "I"]]
word = []
word = "apple".upcase.split('')
p word
p word.include?("A")
# # p array.flatten
# first_letter = word.upcase
# word_paths = [[r],[c], [r-1],[c-1],[r+1],[c+1]]
# i = 0
# if array.each do |row|
#   p first_letter
#   row.include?(first_letter)
#   p row.index(first_letter)
#   end
# end
# # array.each { |array| array.include?(word[0].upcase) ? puts i : i += 1 }

# p word_paths.combination(2).to_a
char_index = []
array = array.flatten
p array
word.each do |char|
  array.include?(char) ? char_index << array.index(char) : "there is no word."
end

p char_index
