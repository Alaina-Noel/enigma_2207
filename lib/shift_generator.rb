class ShiftGenerator
  attr_reader :key, :date

  def initialize(key, date)
    @key = key
    @date = date
  end

  def create_keys
    keys_hash = {A: 0, B: 0, C: 0, D: 0}
    key_array  = key.split("")
    keys_hash[:A] = (key_array[0] + key_array[1]).to_i
    keys_hash[:B] = (key_array[1] + key_array[2]).to_i
    keys_hash[:C] = (key_array[2] + key_array[3]).to_i
    keys_hash[:D] = (key_array[3] + key_array[4]).to_i
    keys_hash
  end

  def create_shifter
    shifter = Hash.new(0)
  end

end
