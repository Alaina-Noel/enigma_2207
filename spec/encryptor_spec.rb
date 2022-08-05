require './lib/encryptor'
require './lib/shift_generator'


RSpec.describe do
  it 'exists' do
    encryptor = Encryptor.new
    expect(encryptor).to be_instance_of(Encryptor)
  end

  it 'can apply a shift to a message' do
    encryptor = Encryptor.new
    shift_generator = ShiftGenerator.new
    keys1 = shift_generator.create_keys("02715", "040895")
    offsets1 = shift_generator.create_offsets("02715", "040895")
    shifter = shift_generator.create_shifter(keys1, offsets1)
require "pry"
binding.pry
    expect(encryptor.apply_shift("hello world", shifter)).to eq("keder ohulw")
  end

  xit 'can apply a shift to a message' do
    encryptor = Encryptor.new
    shifter = {A: 3, B: 27, C: 73, D: 20}

    expect(encryptor.apply_shift("hello world$!", shifter)).to eq("keder ohulw$!")
  end


end
