class Enigma
  attr_reader :shift_generator, :encryptor

  def initialize
    @shift_generator = ShiftGenerator.new
    @encryptor = Encryptor.new
  end

  def encrypt(message, key = 5.times.map{rand(10)}.join , date = Time.now.strftime("%d%m%y"))
      require "pry"
      binding.pry

    {
      encryption: message.apply_shift(message, shifter),
      key: "02715",
      date: "040895"
      }

    #this is where we encrypt the message and the return a hash
  end

end
