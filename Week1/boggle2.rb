# Create your 16 dice, each with 6 possible sides
# each side has a value of a capital letter
# values of Q should be represented as Qu in the final board
# organize the possible results for each die in as a set
# randomly assign each die to 4 rows, each 4 dice long
# find the columns by flipping the rows over the diagonal

# create the method "include?" for your your boggle game
# if the board doesn't include that letter, return false immediately
# if it does, find each square that contains the first letters
# check the spaces above and below it if it contains the second character
# check the top left and bottom right squares of the column and the top left/bottom right square of the row you created for the 2nd character
# if none of these squares contain the second letter, return false.
# if any of the squares contain the letter, repeat this process until the next letter isn't found. 
# if if all characters are found, you have found the word!
# score your points, bro. You're a boggle master. 


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
    @board_array     = []
  end

  def shake! 
    i = 0
    @boggle_dice.each do |die| 
      face = die.sample(); face == "Q" ? @letters_showing << "Qu" : @letters_showing << face; 
    end
    @board_array = Array.new(4){@letters_showing.shift(4)}
    p @board_array
  end
  
  def starting_point(word_guess)
    shake!
    @word = word_guess.upcase
    @first_letter = @word[0]
    @first_letter_index = []
    
    @board_array.each_index do |row| 
      letter_index = @board_array[row].index(@first_letter)
      @first_letter_index << [row, letter_index] if letter_index 
      end
    # rows_with_firstletter = @board_array.find_all{|row| row.include?(first_letter)}
    # p "The rows that contain the first letter are #{rows_with_firstletter}"
    p @first_letter_index
  end

  def check_word([r,c])
    starting_point(word_guess)
    @board_array[r][c]

    surrounding_squares = [[r-1,c-1], [r-1,c], [r-1,c+1],
                           [  r,c-1],          [r,c+1],
                           [r+1,c-1], [r+1,c], [r+1,c+1]]

  end

  def print_board
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
# board.print_board
board.shake!
board.starting_point("eat")
board.starting_point("cot")
board.starting_point("torn")
#>board.shake!
# => E  Y  W  O  
# => H  M  Y  E  
# => V  H  N  I  
# => N  P  L  E 

array = [['x', 'x',' x','x'],['x', 'S',' ','x'],['x', 'x',' x','x']]
array.each_index do |row| 
  letter_index = array[row].index 'S'
  p [row, letter_index] if letter_index 
end

square[r][c]
[[r-1,c-1], [r-1,c], [r-1,c+1],
 [  r,c-1],          [r,c+1],
 [r+1,c-1], [r+1,c], [r+1,c+1]]


spelled_word = spelled_word + spell_word(@filled_board, [x-1, y-1])
spelled_word = spelled_word + spell_word(@filled_board, [x  , y-1])
spelled_word = spelled_word + spell_word(@filled_board, [x+1, y-1])
spelled_word = spelled_word + spell_word(@filled_board, [x-1, y  ])
spelled_word = spelled_word + spell_word(@filled_board, [x+1, y  ])
spelled_word = spelled_word + spell_word(@filled_board, [x-1, y+1])
spelled_word = spelled_word + spell_word(@filled_board, [x  , y+1])
spelled_word = spelled_word + spell_word(@filled_board, [x+1, y+1])


