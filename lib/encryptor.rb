class Encryptor
  attr_reader :char_set

  def initialize
    @char_set = ("a".."z").to_a << " "
    end

  def apply_shift(message, shifter)
    message.each_char.with_index do |char, index|
      if index % 4 == 0
        require "pry"
        binding.pry
      elsif index % 4 == 1
      elsif index % 4 == 2
      elsif index % 4 == 3
      end
    end
  end

  #maybe I need to condense things more and say that enigma can contain the method
  #apply shift and have instance variables of shift_generator and those isntance
  #variables can have methods?


end
