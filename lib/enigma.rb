class Enigma
  attr_reader :message, :key, :date, :shift_generator
  # attr_accessor :shift_generator

  def initialize(message, key =  5.times.map{rand(10)}.join , date = Time.now.strftime("%d%m%y") )
    @message = message
    @key = key
    @date = date
    @shift_generator = ShiftGenerator.new(@key, @date)
  end

  def encrypt(message)
    #this is where we encrypt the message and the return a hash
  end

end
