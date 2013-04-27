array_of_hashes = []

array = [["Number", "Name", "Position", "Points per Game"],
 ["12","Joe Schmo","Center",[14, 32, 7, 0, 23] ],
 ["9", "Ms. Buckets ", "Point Guard ", [19, 0, 11, 22, 0] ],
 ["31", "Harvey Kay", "Shooting Guard", [0, 30, 16, 0, 25] ], 
 ["18", "Sally Talls", "Power Forward ", [18, 29, 26, 31, 19] ], 
 ["22", "MK DiBoux ", "Small Forward ", [11, 0, 23, 17, 0] ]]
hashed_data_table = []

array.each do |player_info| hashed_data_table << {"Number"
=> player_info[0][1],
"Name"             => player_info[0][2],
"Position"         => player_info[0][3],
"Points per Game"  => player_info[0][4]}              end

p hashed_data_table[2]
# => { "Number" => 31, "Name" => "Harvey Kay", "Position" => "Shooting Guard", "Points per Game" => [0, 30, 16, 0, 25] }

puts hashed_data_table[0]["Name"] == "Joe Schmo"   # outputs true
