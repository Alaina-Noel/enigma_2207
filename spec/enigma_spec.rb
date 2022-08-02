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
    expect(enigma.encrypt("hello world", "02715", "040895")).to eq(hash)
  end

  xit 'can decrypt a message' do
    enigma = Enigma.new
    hash =   {
            decryption: "hello world",
            key: "02715",
            date: "040895"
            }
    expect(enigma.decrypt("keder ohulw", "02715", "040895")).to eq(hash)
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
