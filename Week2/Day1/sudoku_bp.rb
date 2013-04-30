class Sudoku

POSSIBILITIES = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]     
  
  def initialize(board_string)
    @box_indexes = [[ 0,  1,  2,  9, 10, 11, 18, 19, 20],    
                    [ 3,  4,  5, 12, 13, 14, 21, 22, 23],
                    [ 6,  7,  8, 15, 16, 17, 24, 25, 26],
                    [27, 28, 29, 36, 37, 38, 45, 46, 47],
                    [30, 31, 32, 39, 40, 41, 48, 49, 50],
                    [33, 34, 35, 42, 43, 44, 51, 52, 53],
                    [54, 55, 56, 63, 64, 65, 72, 73, 74],
                    [57, 58, 59, 66, 67, 68, 75, 76, 77],
                    [60, 61, 62, 69, 70, 71, 78, 79, 80]]
    
    @board_string = board_string.split("") 
  end
  
 
  def solve!

    while @board_string.include?("0")  
      @counter = 0                       
      
      @board_string.each do |square|     
        if square == "0"  
          @possibilities = POSSIBILITIES.dup                                         
          @emptys_index  = @board_string.index(square)
          @row           = @emptys_index / 9       
          @column        = @emptys_index % 9       
          @box           = @box_indexes.select { |i| i.include?(@counter) }[0] 
          
         
          @board_string.each do |known_number|  
            #first, check row and delete possibilities already in row 
            @possibilities.delete(square) if @row == @board_string.index(square) / 9  
            #second, check column and delete possibilites already in column
            @possibilities.delete(square) if @column == @board_string.index(square) % 9 
             
            #third, check box and delete possibilities already in box    
            @box.each do |board_string_index|                              
              if @possibilities.include?(@board_string[board_string_index]) 
                @possibilities.delete(@board_string[board_string_index])
              end
            end  
          end
          
          if @possibilities.length == 1
            @board_string.delete_at(@board_string.index(square))
            @board_string.insert(@counter , @possibilities[0])
          end
        end

        @counter += 1 
      end
    end 
 
  end 



 
  # # Returns a string representing the current state of the board
  # # Don't spend too much time on this method; flag someone from staff
  # if you are.
  def board
    p "Below is the solution, actual board displayed in terminal not yet completed..."
    p @board_string
  end

end

# The file has newlines at the end of each line, so we call
# String#chomp to remove them.
#board_string = File.readlines('sample.unsolved.txt').first.chomp

# this is a simple solution for sudoku


board_string =  '248395716571628349936741582682539174359174628714862953863417295195286430427953861'


# solved puzzle '248395716571628349936741582682539174359174628714862953863417295195286437427953861'
 
game = Sudoku.new(board_string)
 
# Remember: this will just fill out what it can and not "guess"
game.solve!
 
game.board
