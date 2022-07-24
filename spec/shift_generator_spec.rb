require './lib/enigma'
require './lib/shift_generator'
require 'date'

RSpec.describe do
  it 'exists' do
    shift_generator = ShiftGenerator.new
    expect(shift_generator).to be_instance_of(ShiftGenerator)
  end

end
