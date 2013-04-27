=begin

receive input of two words
  change uppercase letters to lowercase
  split each word into letters two groups
  sort both of the words
  see if the two groups of letters are equal.
  if they are equal
  they are anagrams
  if they aren't
  then they aren't
end

=end


def canonical(word)
  word.downcase.split('').sort 
end

def is_anagram?(word1, word2)
  canonical(word1) == canonical(word2)
end

canonical('dogs')

puts is_anagram?("flow", "wolf")
puts is_anagram?("fsas", "treoi")
