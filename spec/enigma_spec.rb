require './lib/enigma'
require './lib/shift_generator'
require 'date'

RSpec.describe do
  it 'exists' do
    enigma = Enigma.new
    expect(enigma).to be_instance_of(Enigma)
  end

  xit 'can encrypt hello world' do
    enigma = Enigma.new
    hash = {
          encryption: "keder ohulw",
          key: "02715",
          date: "040895"
          }
    expect(enigma.encrypt("hello world","040895", "02715")).to eq(hash)
  end

  xit 'can encrypt hello world and generate a random key and date' do
    enigma = Enigma.new
    hash = {
          encryption: "keder ohulw",
          key: "14354",
          date: "280889"
        } #little unsure about this test
    allow(enigma).to receive(:date).and_return("280889")
    allow(enigma).to receive(:key).and_return("14354")
    expect(enigma.encrypt("hello world").to eq(hash)
  end

  xit 'can decrypt a message' do
    enigma = Enigma.new
    hash =   {
            decryption: "keder ohulw",
            key: "02715",
            date: "040895"
            }
    expect(enigma.decrypt("hello world", "02715", "040895")).to eq(hash)
  end

  xit 'can encrypt a message that includes characters not in character set' do
    enigma = Enigma.new
    hash = {
          encryption: "keder ohulw!$",
          key: "02715",
          date: "040895"
          }
    expect(enigma.encrypt("hello world!$", "02715", "040895")).to eq(hash)
  end

  xit 'can encrypt a message that includes capital letters' do
    enigma = Enigma.new
    hash = {
          encryption: "keder oh$$w!",
          key: "02715",
          date: "040895"
          }
    expect(enigma.encrypt("HELLO PI$$A!", "02715", "040895")).to eq(hash)
  end
end
