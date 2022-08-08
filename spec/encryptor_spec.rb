require './lib/encryptor'
require './lib/shift_generator'

RSpec.describe do
  it 'exists' do
    encryptor = Encryptor.new
    expect(encryptor).to be_instance_of(Encryptor)
  end

  it 'has a char set' do
    encryptor = Encryptor.new
    char_set_expected = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q',
                         'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', ' ']
    expect(encryptor.char_set).to eq(char_set_expected)
  end

  it 'can apply a shift to a message' do
    encryptor = Encryptor.new
    shift_generator = ShiftGenerator.new
    shifter = shift_generator.create_shifter('02715', '040895')

    expect(encryptor.rotate_char('h', 4, shifter)).to eq('k')
    expect(encryptor.rotate_char('e', 1, shifter)).to eq('e')
    expect(encryptor.apply_shift('hello world', shifter)).to eq('keder ohulw')
  end

  it 'can apply a shift to a message with extra characters' do
    encryptor = Encryptor.new
    shifter = { A: 3, B: 27, C: 73, D: 20 }

    expect(encryptor.apply_shift('hello world$!', shifter)).to eq('keder ohulw$!')
  end

  it 'can apply a shift to a message with extra characters' do
    encryptor = Encryptor.new
    shifter = { A: 3, B: 27, C: 73, D: 20 }

    expect(encryptor.apply_shift('hello world$!', shifter)).to eq('keder ohulw$!')
  end

  it 'can apply a shift to a message with capital letters' do
    encryptor = Encryptor.new
    shifter = { A: 3, B: 27, C: 73, D: 20 }

    expect(encryptor.apply_shift('HELLO world$!', shifter)).to eq('keder ohulw$!')
  end

  it 'can apply an unshift to a message' do
    encryptor = Encryptor.new
    shifter = { A: 3, B: 27, C: 73, D: 20 }

    expect(encryptor.unrotate_char('k', 4, shifter)).to eq('h')
    expect(encryptor.unrotate_char('w', 10, shifter)).to eq('d')
    expect(encryptor.apply_unshift('keder ohulw', shifter)).to eq('hello world')
  end

  it 'can apply an unshift to a message with extra characters' do
    encryptor = Encryptor.new
    shifter = { A: 3, B: 27, C: 73, D: 20 }

    expect(encryptor.apply_unshift('ke@er ohulw', shifter)).to eq('he@lo world')
  end
end
