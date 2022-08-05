require './lib/encryptor'
require './lib/shift_generator'

RSpec.describe do
  it 'exists' do
    encryptor = Encryptor.new
    expect(encryptor).to be_instance_of(Encryptor)
  end

  it 'can put letters into appropriate groups' do
    encryptor = Encryptor.new
    shift_generator = ShiftGenerator.new("02715", "040895")
    keys1 = {A: 02, B: 27, C: 71, D: 15}
    offsets1 = {A: 1, B: 0, C: 2, D: 5}

    expected_sorted_letters = {
                                A: ["h","o","r"],
                                B: ["e", " ", "l"],
                                C: ["l", "w", "d"],
                                D: ["l", "o"]
                              }

    expect(encryptor.apply_shift).to eq(expected_sorted_letters)
  end

  it 'can apply a shift to all letters' do
    encryptor = Encryptor.new
    shift_generator = ShiftGenerator.new("02715", "040895")
    keys1 = {A: 02, B: 27, C: 71, D: 15}
    offsets1 = {A: 1, B: 0, C: 2, D: 5}

    expected_sorted_letters = {
                                A: ["k","r","u"],
                                B: ["e", " ", "l"],
                                C: ["d", "o", "w"],
                                D: ["e", "h"]
                              }

    expect(encryptor.apply_shift).to eq(expected_sorted_letters)
  end

  it 'can sort letters back into their original order but encrypted' do
    encryptor = Encryptor.new
    shift_generator = ShiftGenerator.new("02715", "040895")
    keys1 = {A: 02, B: 27, C: 71, D: 15}
    offsets1 = {A: 1, B: 0, C: 2, D: 5}

    expected_sorted_letters = {
                                A: ["k","r","u"],
                                B: ["e", " ", "l"],
                                C: ["d", "o", "w"],
                                D: ["e", "h"]
                              }

    expect(encryptor.sort_message).to eq("keder ohulw")
  end


end
