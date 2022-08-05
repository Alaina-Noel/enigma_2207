require './lib/enigma'
require './lib/shift_generator'
require 'date'

RSpec.describe do
  it 'exists' do
    shift_generator = ShiftGenerator.new("02715", "040895")
    expect(shift_generator).to be_instance_of(ShiftGenerator)
  end

  it 'has a key & date to use for shifting' do
    shift_generator = ShiftGenerator.new("02715", "040895")
    expect(shift_generator.key).to eq("02715")
    expect(shift_generator.date).to eq("040895")
  end

  it 'exists when enigma in instantiated' do
    enigma = Enigma.new("hello world", "02715", "040895" )
    expect(enigma.shift_generator).to be_instance_of(ShiftGenerator)
  end

  it 'has attributes when enigma in instantiated' do
    enigma = Enigma.new("hello world", "02715", "040895" )
    expect(enigma.shift_generator.key).to eq("02715")
    expect(enigma.shift_generator.date).to eq("040895")
  end

  it 'can create four keys from the one key' do
    enigma = Enigma.new("hello world", "02715", "040895" )
    hash = {A: 02, B: 27, C: 71, D: 15}
    expect(enigma.shift_generator.create_keys).to eq(hash)
  end

  it 'can create four offsets from the date' do
    enigma = Enigma.new("hello world", "02715", "040895" )
    hash = {A: 1, B: 0, C: 2, D: 5}
    expect(enigma.shift_generator.create_offsets).to eq(hash)
  end

  it 'can generate a shift hash' do
    enigma = Enigma.new("hello world", "02715", "040895" )
    keys1 = {A: 02, B: 27, C: 71, D: 15}
    offsets1 = {A: 1, B: 0, C: 2, D: 5}
    expected_shift = {A: 3, B: 27, C: 73, D: 20}
    expect(enigma.shift_generator.create_shifter(keys1, offsets1)).to eq(expected_shift)
  end


end
