require './lib/encryptor'
require './lib/shift_generator'


RSpec.describe do
  it 'exists' do
    encryptor = Encryptor.new
    expect(encryptor).to be_instance_of(Encryptor)
  end

  it 'has a char set' do
    encryptor = Encryptor.new
    char_set_expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q",
                        "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    expect(encryptor.char_set).to eq(char_set_expected)
  end

  it 'can apply a shift to a message' do
    encryptor = Encryptor.new
    shift_generator = ShiftGenerator.new
    shifter = shift_generator.create_shifter("02715", "040895")

    expect(encryptor.apply_shift("hello world", shifter)).to eq("keder ohulw")
  end

  it 'can apply a shift to a message with extra characters' do
    encryptor = Encryptor.new
    shifter = {A: 3, B: 27, C: 73, D: 20}

    expect(encryptor.apply_shift("hello world$!", shifter)).to eq("keder ohulw$!")
  end

  it 'can apply a shift to a message with extra characters' do
    encryptor = Encryptor.new
    shifter = {A: 3, B: 27, C: 73, D: 20}

    expect(encryptor.apply_shift("hello world$!", shifter)).to eq("keder ohulw$!")
  end

  it 'can apply a shift to a message with capital letters' do
    encryptor = Encryptor.new
    shifter = {A: 3, B: 27, C: 73, D: 20}

    expect(encryptor.apply_shift("HELLO world$!", shifter)).to eq("keder ohulw$!")
  end


end
