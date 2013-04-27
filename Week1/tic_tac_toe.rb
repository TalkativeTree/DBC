options = ["x","o"]
tic_tac_board = []
string = 9.times{tic_tac_board << options.sample}

random_board = Array.new(3){tic_tac_board.shift(3)}


puts random_board.inspect
