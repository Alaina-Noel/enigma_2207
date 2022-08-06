class Encryptor
  attr_reader :char_set

  def initialize
    @char_set = ("a".."z").to_a << " "
    end

  def rotate_char(char, index, shifter)
    if index % 4 == 0
       @char_set.rotate(shifter[:A] + @char_set.find_index(char)).first
    elsif index % 4 == 1
       @char_set.rotate(shifter[:B] + @char_set.find_index(char)).first
    elsif index % 4 == 2
      @char_set.rotate(shifter[:C] + @char_set.find_index(char)).first
    elsif index % 4 == 3
      @char_set.rotate(shifter[:D] + @char_set.find_index(char)).first
    end
  end

  def apply_shift(message, shifter)
    message.downcase.split("").map.with_index do |char, index|
      if !@char_set.include?(char)
        char
      else
        rotate_char(char, index, shifter)
      end
    end.join.to_s
  end

  def unrotate_char(char, index, shifter)
    if index % 4 == 0
      @char_set.rotate(@char_set.find_index(char) - shifter[:A]).first
    elsif index % 4 == 1
      @char_set.rotate(@char_set.find_index(char) - shifter[:B]).first
    elsif index % 4 == 2
      @char_set.rotate(@char_set.find_index(char) - shifter[:C]).first
    elsif index % 4 == 3
      @char_set.rotate(@char_set.find_index(char) - shifter[:D]).first
    end
  end

  def apply_unshift(message, shifter)
    message.downcase.split("").map.with_index do |char, index|
      if !@char_set.include?(char)
        char
      else
        unrotate_char(char, index, shifter)
      end
    end.join.to_s
  end


end
