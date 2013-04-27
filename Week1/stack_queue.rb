#create a new stack 
my_stack=Stack.new;

#verify there are no elements on the new stack
puts "The stack is empty?  #{my_stack.empty?}"

#add 3 elements to the stack
my_stack.push("ruby")
my_stack.push("is")
my_stack.push("cool")

#since our stack is implemented on array we can add any type of object
my_stack.push(15)


#look at all the elements in the stack by popping them off one at time 

    puts "Next Element: #{my_stack.pop}"
    puts "Next Element: #{my_stack.pop}"
    puts "Next Element: #{my_stack.pop}"
    puts "Next Element: #{my_stack.pop}"

#verify there are no elements left on the stack
puts "The stack is empty?  #{my_stack.empty?}"

#what happens if you try to call pop on an empty stack?
puts "Trying to remove an item from an empty stack ... "
    puts "Next Element: #{my_stack.pop}"
