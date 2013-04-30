class Fixnum
  def to_roman
        @int_to_roman = {
                1000 => "M",
                900 => "CM",
                500 => "D",
                400 => "CD",
                100 => "C",
                90 => "XC",
                50 => "L",
                40 => "XL",
                10 => "X",
                9 => "IX",
                5 => "V",
                4 => "IV",
                1 => "I" }
    @mordern_number = self.to_i
    @roman_numeral = ''
    @int_to_roman.each_pair do |integer, roman| 
      if @mordern_number >= integer
        @roman_numeral = @roman_numeral + roman * (@mordern_number/integer)
        @mordern_number %= integer
      end
    end
    @roman_numeral
  end
 
end  


p 1251.to_roman
