require './lib/enigma'
require './lib/shift_generator'
require './lib/encryptor'

file1 = File.open("#{ARGV[0]}", "r")
# require "pry"
# binding.pry
message_from_file = file1.read.strip
enigma = Enigma.new
encrypted = enigma.encrypt(message_from_file)
file2 = File.open("#{ARGV[1]}", "w")
file2.write(encrypted)
file2.close
puts "Created '#{ARGV[1]}' with the key #{encrypted[:key]} and date #{encrypted[:date]}"
#need to take care of multiline messages
