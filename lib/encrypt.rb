#do what needs to be done in here so that we can read and write to the other files

file = File.open('message.txt', "r")
require "pry"
binding.pry
file.readlines
#read the message from the txt file
#encrypt that message
#write the contents of that encryption to a file called decrypted
