class BoggleBoard
  def initialize
    @boggle_dice = [['A','A','E','E','G','N'],
                    ['E','L','R','T','T','Y'],
                    ['A','O','O','T','T','W'],
                    ['A','B','B','J','O','O'],
                    ['E','H','R','T','V','W'],
                    ['C','I','M','O','T','U'],
                    ['D','I','S','T','T','Y'],
                    ['E','I','O','S','S','T'],
                    ['D','E','L','R','V','Y'],
                    ['A','C','H','O','P','S'],
                    ['H','I','M','N','Q','U'],
                    ['E','E','I','N','S','U'],
                    ['E','E','G','H','N','W'],
                    ['A','F','F','K','P','S'],
                    ['H','L','N','N','R','Z'],
                    ['D','E','I','L','R','X']]
    @letters_showing = []
  end

  def shake! 
    i = 0
    @boggle_dice.each do |die| 
      face = die.sample(); face == "Q" ? @letters_showing << "Qu" : @letters_showing << face; 
    end
    @letters_showing.each do |side|
      i += 1
      print side.ljust(3)
      if i % 4 == 0
        print "\n"
      end
    end
  end

end

# new_array = []
# array.each do |letter|
#   if letter == "Q"
#     letter = "Qu"
#   end
# end

board = BoggleBoard.new
board.shake!
#>board.shake!
# => E  Y  W  O  
# => H  M  Y  E  
# => V  H  N  I  
# => N  P  L  E  
