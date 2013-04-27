def destroy_message(string)
  if string.include?(':')
    string.slice(0..(string.index':'))
  else
    string
  end
end

def destroy_message!(string) #=> 123
    index_of_colon = string.index(':')
    if index_of_colon == nil
      return nil
    end
    string.slice!((index_of_colon+1)..-1)
end

# Driver code... 
string = "this message will self-destruct: you can't hug every cat"
original_string = string.dup
puts destroy_message(string) == "this message will self-destruct:"
puts string == original_string # we shouldn't modify the string passed to destroy_message

string = "this has no message"
original_string = string.dup
puts destroy_message(string) == string
puts string == original_string # we shouldn't modify the string passed to destroy_message

string = "this message will self-destruct: you can't hug every cat" #=> object_id 123
original_string = string.dup #=>object_id of original_string 124
destroy_message!(string) 
puts string == "this message will self-destruct:"
puts string != original_string

string = "this has no message"
result = destroy_message!(string)
puts result.nil?
puts string == string
