class Encryptor

  def initialize
    #I want to initialize it with a shift_generator object?
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
