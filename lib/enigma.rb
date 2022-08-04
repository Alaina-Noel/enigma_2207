class Enigma
  attr_reader :message, :key, :date

  def initialize(message, key =  5.times.map{rand(10)}.join , date = Time.now.strftime("%d%m%y") )
    @message = message
    @key = key
    @date = date
  end

end
