require_relative './rotatable'

class Encryptor
  include Rotatable

  attr_reader :char_set

  def initialize
    @char_set = ('a'..'z').to_a << ' '
  end

  def apply_shift(message, shifter)
    message.downcase.split('').map.with_index do |char, index|
      if !@char_set.include?(char)
        char
      else
        rotate_char(char, index, shifter)
      end
    end.join.to_s
  end

  def apply_unshift(message, shifter)
    message.downcase.split('').map.with_index do |char, index|
      if !@char_set.include?(char)
        char
      else
        unrotate_char(char, index, shifter)
      end
    end.join.to_s
  end
end
