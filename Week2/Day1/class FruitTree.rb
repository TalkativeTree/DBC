class FruitTree 
  attr_accessor :fruit
  attr_reader :stage, :branches, :rings, :pace, :fruit_type

  def initialize
    @height = 0
    @rings = 0
    @fruit = 0
    @stage = 'seed'
    @branches = 1
    @fruit_type = "generic fruit"    
    @pace = 1
  end

  def age!
    @rings += (1 * @pace)
    passage_of_time
  end

  def mature
    stages = ["seed", "baby", "adolescent", "teen", "mature"]
    @stage = stages[(@rings / 1.5) % 5]
    passage_of_time
  end
  
  # def let_season_pass
  #   puts "#{@fruit} #{@fruit_type} drop to the ground and rot. Think of the children in China."
  #   @fruit = 0
  # end
  
  def harvest
    @fruit
  end  

  

  private
  def populate_tree
    @fruit = @branches * 3
  end

  def passage_of_time
    @rings += 1
    @height += 3 unless @rings >= 10
    @branches = @rings * 23
    populate_tree
  end
end


class AppleTree < FruitTree
  attr_reader :fruit_type
  def initialize
    super
    @name = "Johny Apple Seed"
    @fruit_type = "apples"
    @pace = 2
  end

  def name
    self.stage == 'mature' ? (@name = "Johny Apple Tree") : @name
  end

end

class TreeGrove
  attr_accessor :basket
  attr_reader :grove

  def initialize
    @basket = []
    @grove = []
  end

  def plant_tree
    puts "What kind of tree would you like to plant? psst..(type the number)"
    puts "1: Apple Tree\n2: Orange Tree"
    print "> "
    tree_type = gets.chomp
    @grove << [AppleTree.new, FruitTree.new][tree_type.to_i - 1]
    # @grove << (tree_type == "1" ? AppleTree.new : FruitTree.new)
  end

  def get_ready_to_harvest
    self.grove.each {|tree| tree.age! }
    
    case disaster_strikes
    when "She got struck by lighting."
      self.grove.each {|tree| tree.fruit /= 4}
    when "Bugs ruined the harvest"
      self.grove.each {|tree| tree.fruit /= 10}
    when "Kids stole your fruit"
      self.grove.each {|tree| tree.fruit /= 2}
    else
      self.grove.each {|tree| tree.fruit /= 1.5}
    end
  end
    

  def print_trees
      puts "  nnnnnnn  " * (self.grove.count {|tree| tree.stage == "mature"}) + "           " * (self.grove.count {|tree| tree.stage == "adolescent"}) + "           " * (self.grove.count {|tree| tree.stage == "teen"}) + "           " * (self.grove.count {|tree| tree.stage == "seed"}) + "           " * (self.grove.count {|tree| tree.stage == "baby"})
      puts "  n nnn n  " * (self.grove.count {|tree| tree.stage == "mature"}) + "  nnnnnnn  " * (self.grove.count {|tree| tree.stage == "adolescent"}) + "           " * (self.grove.count {|tree| tree.stage == "teen"}) + "           " * (self.grove.count {|tree| tree.stage == "seed"}) + "           " * (self.grove.count {|tree| tree.stage == "baby"}) 
      puts "    nnn    " * (self.grove.count {|tree| tree.stage == "mature"}) + "  n  n  n  " * (self.grove.count {|tree| tree.stage == "adolescent"}) + "    nnn    " * (self.grove.count {|tree| tree.stage == "teen"}) + "           " * (self.grove.count {|tree| tree.stage == "seed"}) + "           " * (self.grove.count {|tree| tree.stage == "baby"}) 
      puts "     n     " * (self.grove.count {|tree| tree.stage == "mature"}) + "    nnn    " * (self.grove.count {|tree| tree.stage == "adolescent"}) + "     n     " * (self.grove.count {|tree| tree.stage == "teen"}) + "           " * (self.grove.count {|tree| tree.stage == "seed"}) + "     n     " * (self.grove.count {|tree| tree.stage == "baby"}) 
      puts "     n     " * (self.grove.count {|tree| tree.stage == "mature"}) + "     n     " * (self.grove.count {|tree| tree.stage == "adolescent"}) + "    nnn    " * (self.grove.count {|tree| tree.stage == "teen"}) + "           " * (self.grove.count {|tree| tree.stage == "seed"}) + "    nnn    " * (self.grove.count {|tree| tree.stage == "baby"}) 
      puts "_____n_____" * (self.grove.count {|tree| tree.stage == "mature"}) + "_____n_____" * (self.grove.count {|tree| tree.stage == "adolescent"}) + "_____n_____" * (self.grove.count {|tree| tree.stage == "teen"}) + "_____n_____" * (self.grove.count {|tree| tree.stage == "seed"}) + "_____n_____" * (self.grove.count {|tree| tree.stage == "baby"}) 
  end
  private
  
  def disaster_strikes
    natural_disastors = ["A fire destroyed her.", "She got struck by lighting.",
                          "Bugs ruined the harvest", "Kids stole your fruit", 
                          ' ', ' ', ' ', ' ',' ', ' ', ' ', ' ',' ', ' ' ]
    natural_disastors[rand(natural_disastors.length)]
  end  
end

# tree = AppleTree.new

# p tree.inspect
# p tree.rings
# p tree.stage
# p tree.age! 
# p tree.name
# tree.mature
# tree.mature
# tree.mature
# tree.mature
# tree.mature
# tree.let_season_passes
# tree.mature
# tree.mature
# p tree.stage
# p tree.branches
# tree.let_season_passes
# p tree.name
# p tree.age! 

new_grove = TreeGrove.new
new_grove.plant_tree
new_grove.plant_tree
new_grove.plant_tree
new_grove.get_ready_to_harvest
new_grove.get_ready_to_harvest
# new_grove.each{|tree| p tree.fruit_type}
new_grove.grove.each do |tree|
  tree.age!
  tree.age!
  tree.mature
  puts tree.stage
  puts "We have #{tree.fruit} #{tree.fruit_type}"
 end
 new_grove.print_trees
