# FUNKY PSEUDO CODE BELOW!!

POSSIBILITIES = [1,2,3,4,5,6,7,8,9]
array = "003020600900305001001806400008102900700000008006708200002609500800203009005010300".split('')
array.each do |element|#|find_zero|
  possibilities = POSSIBILITIES
  if element = 0
    row = array.index(element) / 9 
    col = array.index(element) % 9
    LSQ = array.index(element - 1)
    RSQ = array.index(element + 1)
    TPS = array.index(element - 8)
    BLS = array.index(element + 8)
    TSQ = array.index(element - 9)
    BSQ = array.index(element + 9)
    TLS = array.index(element -10)
    BRS = array.index(element +10)
  array.each do #|find_rows_col_boxes|
      if row   == array.index(element) / 9 
        possibilities.delete(element) if possibilities.include?(array.index(element))
      if col   == array.index(element) % 9
      if LSQ   == array.index(element - 1)
      if RSQ   == array.index(element + 1)
      if TPS   == array.index(element - 8)
      if BLS   == array.index(element + 8)
      if TSQ   == array.index(element - 9)
      if BSQ   == array.index(element + 9)
      if TLS   == array.index(element -10)
      if BRS   == array.index(element +10)










array = "003020600900305001001806400008102900700000008006708200002609500800203009005010300".split('')

element is in row1 if array[n] / 9 = 0
element is in row2 if array[n] / 9 = 1
element is in row3 if array[n] / 9 = 2
element is in row4 if array[n] / 9 = 3
element is in row5 if array[n] / 9 = 4
element is in row6 if array[n] / 9 = 5
element is in row7 if array[n] / 9 = 6
element is in row8 if array[n] / 9 = 7
element is in row9 if array[n] / 9 = 8

element is in column1 if array[n] % 9 = 0
element is in column2 if array[n] % 9 = 1
element is in column3 if array[n] % 9 = 2
element is in column4 if array[n] % 9 = 3
element is in column5 if array[n] % 9 = 4
element is in column6 if array[n] % 9 = 5
element is in column7 if array[n] % 9 = 6
element is in column8 if array[n] % 9 = 7
element is in column9 if array[n] % 9 = 8


for 0, divid index by 9 and delete from possibel number, every other number that return the same value when /9
