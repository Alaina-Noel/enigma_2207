require './lib/encryptor'
require './lib/shift_generator'
require './lib/rotatable'

RSpec.describe do
  it 'can rotate a single character' do
    encryptor = Encryptor.new
    shift_generator = ShiftGenerator.new
    shifter = shift_generator.create_shifter('02715', '040895')

    expect(encryptor.rotate_char('h', 4, shifter)).to eq('k')
  end

  it 'can un-rotate a single character' do
    encryptor = Encryptor.new
    shift_generator = ShiftGenerator.new
    shifter = shift_generator.create_shifter('02715', '040895')

    expect(encryptor.unrotate_char('k', 4, shifter)).to eq('h')
  end
end
