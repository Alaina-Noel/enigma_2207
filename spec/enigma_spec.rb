require './lib/enigma'
require './lib/shift_generator'
require './lib/encryptor'
require 'time'

RSpec.describe do
  it 'exists' do
    enigma = Enigma.new
    expect(enigma).to be_instance_of(Enigma)
  end

  it 'has a shift generator' do
    enigma = Enigma.new
    expect(enigma.shift_generator).to be_instance_of(ShiftGenerator)
  end

  it 'has an encryptor' do
    enigma = Enigma.new
    expect(enigma.encryptor).to be_instance_of(Encryptor)
  end

  it 'has an nil encrypted upon instantiation' do
    enigma = Enigma.new
    expect(enigma.encrypted).to be(nil)
  end

  it 'can encrypt hello world' do
    enigma = Enigma.new
    encrypted_hash = { encryption: "keder ohulw", key: "02715", date: "040895" }

    expect(enigma.encrypt("hello world","02715", "040895" )).to eq(encrypted_hash)
  end

  it 'can encrypt a message that includes characters not in character set' do
    enigma = Enigma.new
    encrypted_hash = { encryption: "keder ohulw!$", key: "02715", date: "040895" }

    expect(enigma.encrypt("hello world!$", "02715", "040895")).to eq(encrypted_hash)
  end

  it 'can have an encrypted hash after encrypting' do
    enigma = Enigma.new
    enigma.encrypt("hello world!$", "02715", "040895")
    encrypted_hash = { encryption: "keder ohulw!$", key: "02715", date: "040895" }

    expect(enigma.encrypted).to eq(encrypted_hash)
  end

  it 'can encrypt a message that includes capital letters' do
    enigma = Enigma.new
    encrypted_hash = { encryption: "keder oh$$w!", key: "02715", date: "040895" }

    expect(enigma.encrypt("HELLO WO$$D!", "02715", "040895")).to eq(encrypted_hash)
  end

  it 'can generate todays date if one is not passed in' do
    enigma = Enigma.new
    encrypted_hash = { encryption: "keder ohulw", key: "02715", date: "040895" }

    allow(Time).to receive(:now).and_return(Time.parse("95-08-04"))
    expect(enigma.encrypt("hello world", "02715")).to eq(encrypted_hash)
  end

  it 'can generate todays date & random key if one is not passed in' do
    enigma = Enigma.new
    encrypted_hash = { encryption: "tpya kidcwq", key: "11111", date: "040895" }

    allow(Time).to receive(:now).and_return(Time.parse("95-08-04"))
    allow(Random).to receive(:rand).and_return(1)
    expect(enigma.encrypt("hello world")).to eq(encrypted_hash)
  end

  it 'can decrypt a message' do
    enigma = Enigma.new
    decrypted_hash = { decryption: "hello world", key: "02715", date: "040895" }
    expect(enigma.decrypt("keder ohulw", "02715", "040895")).to eq(decrypted_hash)
  end

  it 'can decrypt a message when non char_set_expected characters are in the mix' do
    enigma = Enigma.new
    decrypted_hash = { decryption: "h5llo world", key: "02715", date: "040895" }
    expect(enigma.decrypt("k5der ohulw", "02715", "040895")).to eq(decrypted_hash)
  end


end
