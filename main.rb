require_relative "lib/rotational_cipher"

puts "Type the number for encryption:"
  number = gets.chomp.to_i
  rc = RotationalCipher.new(number)
 
  if rc.valid_number?
    puts "Type the word you want to encrypt:"
      word = gets.chomp
    puts "Your word encrypted via Rotational Cipher with number #{@number} is:"
      puts  rc.rot(word)  
  else
    puts "The number you're entered must be from 0 to 26, please enter a valid number."
  end

