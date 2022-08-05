class Encryptor
  attr_reader :char_set

  def initialize
    @char_set = ("a".."z").to_a << " "
    end

  def apply_shift(message, shifter)
    result = "" #could turn to array & use map then wouldn't need a container
    message.downcase.each_char.with_index do |char, index|
      if !@char_set.include?(char)
        result << char
      else
        start = @char_set.find_index(char)
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
    end
    result
  end


end
