###How to Play the Game###

1. Open the message.txt file and type a message you'd like to encrypt.
1. From your terminal run
  ruby ./lib/encrypt.rb message.txt encrypted.txt
1. Note the key and date that are used.
1. Check out the encrypted.txt file. Your message has been encrypted!
1. From your terminal run
./lib/decrypt.rb encrypted.txt decrypted.txt <key_used_for_encryption> <date_used_for_encryption>
1. Check the decrypted.txt file for your decrypted message!
