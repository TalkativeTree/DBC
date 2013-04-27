def pig_latin
  pig_latin_sentence
end

def pig_latin_word(word)
  letter = ""
  vowels = ["a", "e", "i", "o", "u"]
  if vowels.include?(word[0])
    return word
  else
    letter = word.slice!(0)
    return (word + letter + "ay")
  end
end

def pig_latin_sentence
  puts "say something smart"
  sentence = gets.chomp.split(" ")
  pig_latin_translation = []
  pig_latin_translation << sentence.map{|word| pig_latin_word(word)}
  pig_latin_translation.join(" ")
end

pig_latin
