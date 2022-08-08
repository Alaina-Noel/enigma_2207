require './lib/enigma'
require './lib/shift_generator'
require './lib/encryptor'

encrypted_file = File.open("#{ARGV[0]}", 'r')
encrypted_message = encrypted_file.read
enigma = Enigma.new
decrypted_hash = enigma.decrypt(encrypted_message, ARGV[2], ARGV[3])
decrypted_message = decrypted_hash[:decryption]
file2 = File.open("#{ARGV[1]}", 'w')
file2.write(decrypted_message)
file2.close
puts "Created '#{ARGV[1]}' with the key #{decrypted_hash[:key]} and date #{decrypted_hash[:date]}"
