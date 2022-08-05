module ShiftGenerator

  def create_keys(key, date)
    four_keys = {A: 0, B: 0, C: 0, D: 0}
    key_array  = key.split("")
    four_keys[:A] = (key_array[0] + key_array[1]).to_i
    four_keys[:B] = (key_array[1] + key_array[2]).to_i
    four_keys[:C] = (key_array[2] + key_array[3]).to_i
    four_keys[:D] = (key_array[3] + key_array[4]).to_i
    four_keys
  end

  def create_offsets(key, date)
    four_offsets = {A: 0, B: 0, C: 0, D: 0}
    four_digit_string = (date.to_i ** 2).to_s.slice(-4..-1)
      four_offsets[:A] = four_digit_string[0].to_i
      four_offsets[:B] = four_digit_string[1].to_i
      four_offsets[:C] = four_digit_string[2].to_i
      four_offsets[:D] = four_digit_string[3].to_i
      four_offsets
  end

  def create_shifter(keys, offsets)
    keys.merge!(offsets) do |shift_letter, key, offset|
      key + offset
    end
  end

end
