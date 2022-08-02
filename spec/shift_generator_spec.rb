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

  xit 'can generate a shift for one letter message' do
    shift_generator = ShiftGenerator.new("02715", "040895")
    shifter = false

    expect(shift_generator.shift_generate("h", "02715", "040895")).to eq("k")
  end

  xit 'can apply a shift to a word' do
  end

end
