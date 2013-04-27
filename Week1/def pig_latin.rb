def pig_latin_word
  puts "Gives us a word, please."
  word = gets.chomp.downcase
  letter = ""
  vowels = ["a", "e", "i", "o", "u"]
  if vowels.include?(word[0])
    return word
  else
    letter = word.slice!(0)
    return (word + letter + "ay")
  end

end

puts pig_latin_word

def pig_latin_sentence
  puts "say something smart"
  sentence = gets.chomp.split(" ")
  puts sentence.inspect
end

pig_latin_sentence
