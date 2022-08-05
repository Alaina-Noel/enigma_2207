require './lib/encryptor'

RSpec.describe do
  it 'exists' do
    encryptor = Encryptor.new
    expect(encryptor).to be_instance_of(Encryptor)
  end

  it 'can apply a shift to a message' do
    encryptor = Encryptor.new
    shifter = {A: 3, B: 27, C: 73, D: 20}

    expect(encryptor.apply_shift("hello world", shifter)).to eq("keder ohulw")
  end

  xit 'can apply a shift to a message' do
    encryptor = Encryptor.new
    shifter = {A: 3, B: 27, C: 73, D: 20}

    expect(encryptor.apply_shift("hello world$!", shifter)).to eq("keder ohulw$!")
  end


end
