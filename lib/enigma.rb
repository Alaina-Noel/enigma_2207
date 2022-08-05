class Enigma
  attr_reader :shift_generator, :encryptor

  def initialize
    @shift_generator = ShiftGenerator.new
    @encryptor = Encryptor.new
  end

  def encrypt(message, key = 5.times.map{Random.rand(10)}.join , date = Time.now.strftime("%d%m%y"))
      {
      encryption: encryptor.apply_shift(message, shift_generator.create_shifter(key, date)),
      key: key,
      date: date
      }
  end

  def decrypt(message, key, date)
      {
      decryption: encryptor.apply_unshift(message, shift_generator.create_shifter(key, date)),
      key: key,
      date: date
      }
  end


end
