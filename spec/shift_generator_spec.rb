require './lib/enigma'
require './lib/shift_generator'

RSpec.describe do
  it 'exists' do
    shift_generator = ShiftGenerator.new
    expect(shift_generator).to be_instance_of(ShiftGenerator)
  end

  it 'can create four keys from the one key' do
    shift_generator = ShiftGenerator.new
    hash = {A: 02, B: 27, C: 71, D: 15}
    expect(shift_generator.create_keys("02715", "040895")).to eq(hash)
  end

  it 'can create four offsets from the date' do
    shift_generator = ShiftGenerator.new
    hash = {A: 1, B: 0, C: 2, D: 5}
    expect(shift_generator.create_offsets("02715", "040895")).to eq(hash)
  end

  it 'can generate a shift hash' do
    shift_generator = ShiftGenerator.new
    keys = "02715"
    date = "040895"
    expected_shifter = {A: 3, B: 27, C: 73, D: 20}
    expect(shift_generator.create_shifter(key, date)).to eq(expected_shifter)
  end

end
