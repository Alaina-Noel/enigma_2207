require './lib/enigma'
require 'date'

RSpec.describe do
  it 'exists' do
    enigma = Enigma.new
    expect(enigma).to be_instance_of(Enigma)
  end

  it 'can encrypt hello world' do
    enigma = Enigma.new
    hash = {
          encryption: "keder ohulw",
          key: "02715",
          date: "040895"
          }
    expect(enigma.encrypt).to eq(hash)
  end



end
