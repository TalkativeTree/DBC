# Comment - explain input
# Comment - give examples of input

DEFINE method
create array to hold gold
assign grid positions to x, y
x = position in column or element in array
y = row position or array in array

LOOP through elements until no gold is left
  IF gold is found, add to gold array
    replace current square with rock 
    move to next grid position
  IF position is end of row
    move on to next row if row exists
  RAISE ERROR if you miss gold
  INFORM user of how much gold is collected

CALL method
