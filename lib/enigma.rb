class Enigma
  attr_reader :shift_generator, :encryptor

  def initialize
    @shift_generator = ShiftGenerator.new
    @encryptor = Encryptor.new
  end

  def encrypt(message, key = 5.times.map{rand(10)}.join , date = Time.now.strftime("%d%m%y"))
      shifter = shift_generator.create_shifter(key, date)
    {
      encryption: encryptor.apply_shift(message, shifter),
      key: key,
      date: date
      }

    #this is where we encrypt the message and the return a hash
  end

end
