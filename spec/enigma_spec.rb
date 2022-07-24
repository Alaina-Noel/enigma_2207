require './lib/enigma'
require 'date'

RSpec.describe do
  it 'exists' do
    enigma = Enigma.new
    expect(enigma).to be_instance_of(Enigma)
  end

end
