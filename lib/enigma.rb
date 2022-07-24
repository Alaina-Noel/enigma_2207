class Enigma

  def initialize
  end

  def encrypt(message, key, date)
    encrypted_hash = Hash.new(0)
    encrypted_hash[:encryption] = "Encrypted Message PlaceHolder"
    encrypted_hash[:key] = key
    encrypted_hash[:date] = date
    encrypted_hash
  end

end
