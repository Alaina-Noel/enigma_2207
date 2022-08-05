class Enigma
  attr_reader :shift_generator
  #todo redo this whole thing.

  def initialize
    @shift_generator = ShiftGenerator.new(@key, @date)
    #encryptor Encrptor(string)
  end

  def encrypt(message, key = 5.times.map{rand(10)}.join , date = Time.now.strftime("%d%m%y"))

    @shift_generator.create_keys(key, date)
    #this is where we encrypt the message and the return a hash
  end

end
