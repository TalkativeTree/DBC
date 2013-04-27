puts [">         >         >         >         >         >         >         >         ", 
      ">         >         >         >         >         >         >         >         "]

@position = 2
a = "at"
string = "this is a string"
string.slice!(@position)
string.insert(@position, a)

puts string
