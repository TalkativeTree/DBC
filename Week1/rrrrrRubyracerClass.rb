require_relative 'racer_utils'
 
class RubyRacer
  attr_reader :players, :length
 
  def initialize(players, length = 30)
  @player = players
  @board =  ">         >         >         >         >         >         >         >       ]"
  @player_positions = {"a"=> 0, "b" => 0}
  end
  # Returns +true+ if one of the players has reached 
  # the finish line, +false+ otherwise
  def finished?
    if @player_positions ["b"] > 80  
      return winner(@player[1])
    elsif @player_positions["a"] > 80
      return winner(@player[0])
    end
  end
  
  # Returns the winner if there is one, +nil+ otherwise
  def winner(player)
    puts "Player #{player} is the WINRAR!"
  end

  # Prints the current game board
  # The board should have the same dimensions each time
  # and you should use the "reputs" helper to print over
  # the previous board
  def print_board   
    puts @board
    flush!
    reputs @board
  end
 
  # Rolls the dice and advances +player+ accordingly
  def advance_player(player)
    if @player_positions[player] > 79
      return player
    end
    @board.slice!(@player_positions[player])
    @board.insert(@player_positions[player], "~")
    @player_positions[player] += Die.new.roll

    @board.slice!(@player_positions[player])
    @board.insert(@player_positions[player], player)
    # puts @board
    @board = @board
    # p "Player a: #{@player_positions["a"]}"
    # p "Player b: #{@player_positions["b"]}"
    
  end
  


end

players = ['a', 'b']
 
game = RubyRacer.new(players)


# This clears the screen, so the fun can begin
clear_screen!
 
until game.finished?
  players.each do |player|
    # This moves the cursor back to the upper-left of the screen
    move_to_home!
  
    # We print the board first so we see the initial, starting board
    game.print_board

    game.advance_player(player)

    # We need to sleep a little, otherwise the game will blow right past us.
    # See http://www.ruby-doc.org/core-1.9.3/Kernel.html#method-i-sleep
    sleep(0.1)
  end
end
 
# # # # The game is over, so we need to print the "winning" board
game.print_board
 
puts "Player '#{game.winner}' has won!"

# # OUTPUT PHASE 1
# p game.advance_player
# "Player a: #{player_positions["a"]}"
# "Player b: #{player_positions["b"]}"
# print_board

# Player a: 2
# Player b: 0

# Player a: 2
# Player b: 5

# Player a: 10
# Player b: 11
# Player a: 14
# Player b: 17
# etc

