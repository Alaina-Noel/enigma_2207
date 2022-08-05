class Encryptor
  attr_reader :char_set

  def initialize
    @char_set = ("a".."z").to_a << " "
    end

  def apply_shift(message, shifter)
    result = ""
    message.each_char.with_index do |char, index|
      start = @char_set.find_index(char)
      result << char if !@char_set.include?(char)
      if index % 4 == 0
        result << @char_set.rotate(shifter[:A] + start).first
      elsif index % 4 == 1
        result << @char_set.rotate(shifter[:B] + start).first
      elsif index % 4 == 2
        result << @char_set.rotate(shifter[:C] + start).first
      elsif index % 4 == 3
        result << @char_set.rotate(shifter[:D] + start).first
      end
    end
    result
  end

  #maybe I need to condense things more and say that enigma can contain the method
  #apply shift and have instance variables of shift_generator and those isntance
  #variables can have methods?


end
