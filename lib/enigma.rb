class Enigma
  attr_reader :message, :shift_generator

  def initialize
    @message = nil
    @shift_generator = nil
  end

  def encrypt(message, key, date)
    @shift_generator = ShiftGenerator.new(key, date)
    @message = message
    encrypted_message = @message.upcase #haven't made this method yet
    encrypted_hash = Hash.new(0)
    encrypted_hash[:encryption] = encrypted_message
    encrypted_hash[:key] = key
    encrypted_hash[:date] = date
    encrypted_hash
  end
end
