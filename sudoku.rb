class Sudoku
  
  POSSIBILITIES = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
  
  def initialize(board_string)
    @box_indexes = [[10,  9, 11,  2, 18,  1, 19,  0, 20], #first value = center square's index
                    [13, 12, 14,  5, 21,  4, 22,  3, 23], #in order of top left to bottom right boxes.
                    [16, 15, 17,  8, 24,  7, 25,  6, 26],
                    [37, 36, 38, 29, 45, 28, 46, 27, 47],
                    [40, 39, 41, 32, 48, 31, 49, 30, 50],
                    [43, 42, 44, 35, 51, 34, 52, 33, 53],
                    [64, 63, 65, 56, 72, 55, 73, 54, 74],
                    [67, 66, 68, 59, 75, 58, 76, 57, 77],
                    [70, 69, 71, 62, 78, 61, 79, 60, 80]]
    # @board = nil
    @board_string = board_string.split("")
    #@counter = 0
    #@answer_string = nil      
  end
 
  def solve!
    # counter = 0
    while @board_string.include?("0") 
      #@counter = 0
      # p @board_string
      @board_string.each do |square|
        @possibilities = POSSIBILITIES
        
        if square == "0"
          @row    = @board_string.index(square) / 9
          @column = @board_string.index(square) % 9
          @box    = @box_indexes.find { |box_that| box_that.include?(@board_string.index(square)) }
        
          #first check rows and delete possibilities already in row 
          @board_string.each do |square|
            if @row == @board_string.index(square)  / 9
              @possibilities.delete(square)
              # p @possibilities
            end

            if @column == @board_string.index(square)  % 9
              @possibilities.delete(square) 
            end
              
            @box.each do |value_at_index| 
              @possibilities.each do |possibilities|
                if possibilities.include?(@board_string[value_at_index])
                  @possibilities.delete(@board_string[value_at_index])
                end
              end
            end  
            # p @possibilities

          @board_string
          end
          if @possibilities.length == 1
            # p square
            # p "possibilities #{@possibilities}"
            answer = @board_string.index(square)
            @board_string.delete_at(@board_string.index(square))
            # p square
            # p @board_string
            @board_string.insert(answer , @possibilities[0])
            # board_string.insert(@board_string.index(square), @possibilities[0])
          end
          p @board_string

        end 
        #@counter += 1
      end
    end 

  end 
    # @answer_string = @board_string



  #           find each filled square's index (array(empty_square))
  #         search rows (row = array.index(element) / 9 
  #           if divided index of value in row == divided index of 
  #           if value in row = value in possibilities, delete value from possibilities
  #         search columns (columns = array.index(element) % 9
  #           if value in columns = value in possibilities, delete value from possibilities
  #         search boxes
  #           see if 
  #     end  
  #   end

  # end
 
  # # Returns a string representing the current state of the board
  # # Don't spend too much time on this method; flag someone from staff
  # if you are.
  def board
    #"hello"
  end

end
# The file has newlines at the end of each line, so we call
# String#chomp to remove them.
#board_string = File.readlines('sample.unsolved.txt').first.chomp

board_string = '048395716571628349936741082682539174359174628714862953863417295195286437427953861'

# solved puzzle '248395716571628349936741582682539174359174628714862953863417295195286437427953861'
 
game = Sudoku.new(board_string)
 
# Remember: this will just fill out what it can and not "guess"
game.solve!
 
puts game.board
