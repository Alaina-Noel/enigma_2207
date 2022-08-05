class Enigma
  attr_reader :message, :key, :date, :shift_generator
  #todo redo this whole thing.

  def initialize(message, key = 5.times.map{rand(10)}.join , date = Time.now.strftime("%d%m%y"))
    @message = message
    @key = key
    @date = date
    @shift_generator = ShiftGenerator.new(@key, @date)
    #encryptor Encrptor(string)
  end

  def encrypt(message)
    #this is where we encrypt the message and the return a hash
  end

end
