# This is how you define your own custom exception classes
class NoOrangesError < StandardError
end
 
class OrangeTree

  attr_reader :age, :height, :what_happened



  def initialize
    @age = 0
    @height = 0
    @oranges = []
    @ways_to_die = ["A fire destroyed her.", "She got struck by lighting.", ' ', ' ',' ', ' ', ' ', ' ',' ', ' ' ]
  end

  # Ages the tree one year
  def age!
    @oranges = []
    @age += 1
    @height += 3 
    @ways_to_die << "Some asshole chopped her down."
    oranges_grow
  end
 
  # Returns +true+ if there are any oranges on the tree, +false+ otherwise
  def any_oranges?
    @oranges.length > 0
  end
 
  # Returns an Orange if there are any
  # Raises a NoOrangesError otherwise
  def pick_an_orange!
    raise NoOrangesError, "This tree has no oranges" unless self.any_oranges?
    
    @oranges.pop
  end

  def dead?
    accidents_happen? 
  end

  private
  # def time_passes
  #   age!
  # end
  def oranges_grow
    @height.times do 
      @oranges << Orange.new(4 * rand) if @age > 4 && rand(2) == 1
    end
  end

  def accidents_happen?
    @what_happened = @ways_to_die.sample(1)
    @what_happened != [" "] && @height > 20
  end
  

end
 
class Orange
  attr_reader :diameter

  # Initializes a new Orange with diameter +diameter+
  def initialize(diameter)
    @diameter = diameter
  end



end

def dramatic_finish(string)
  puts ""
  string.split(//).each do |letter|
    print letter 
    sleep(0.05)
  end
  puts ""
end


tree = OrangeTree.new

tree.age! until tree.any_oranges?
# 5.times do tree.age!
# end
# p tree
puts "Tree is #{tree.age} years old and #{tree.height} feet tall"

until tree.dead?
  basket = []

# #   # It places the oranges in the basket
# #   # IT PLACES THE ORANGES IN THE BASKET
  while tree.any_oranges?
    basket << tree.pick_an_orange!
  end
  if basket.length != 0
  avg_diameter = (basket.inject(0) {|sum, orange| sum += orange.diameter}) / basket.length # It's up to you to calculate the average diameter for this harvest.
  end
  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height} feet"
  puts "Harvest:     #{basket.size} oranges with an average diameter of " + sprintf("%.2f", avg_diameter) + " inches"
# #   puts ""

# #   # Age the tree another year
  tree.age!
end

dramatic_finish "Alas, the tree, she is dead! ... #{tree.what_happened[0]} "
