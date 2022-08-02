class Enigma
  attr_reader :message

  def initialize
    @message = nil
  end

  def encrypt_message(input)
    input.upcase
    #where should this method live?
  end

  def encrypt(message, key, date)
    #intake the 3 parameters, pass them to where they need to go
    #return them back here and spit them out into a hash
    @message = message
    encrypted_message = encrypt_message(@message) #haven't made this method yet
    encrypted_hash = Hash.new(0)
    encrypted_hash[:encryption] = encrypted_message
    encrypted_hash[:key] = key
    encrypted_hash[:date] = date
    encrypted_hash
  end


end
