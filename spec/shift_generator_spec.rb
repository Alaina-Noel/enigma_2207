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

  xit 'can generate a shift for one letter message' do
    shift_generator = ShiftGenerator.new("02715", "040895")
    shifter = false

    expect(shift_generator.shift_generate("h", "02715", "040895")).to eq("k")
  end

  xit 'can pad the randomly gemerated numbers with 00 on the left side' do
    enigma = Enigma.new
    hash = {
          encryption: "keder ohulw",
          key: "02715",
          date: "040895"
          }
    expect(enigma.encrypt("hello world", "2715", "040895")).to eq(hash)
  end

end
