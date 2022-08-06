module Rotatable

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
  
end
