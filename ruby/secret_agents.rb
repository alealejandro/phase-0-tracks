
# Methods needed:

def encrypt (word)
	new_word = ""
	index = 0
	new_letter = ""
	while index < word.length
	letter = word[index]
		if letter == "z" 
			new_letter = "a"
			# didn't use .delete("a") - how to make it delete just 1 of the 2 a's?
		else
			new_letter = letter.next
		end
	new_word += new_letter
	index += 1 
	end
	new_word
	# Didn't use puts here because of return value
	# Interfered with arguments (NIL) & nested method call
end

def decrypt (word)
	new_word = ""
	index = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	while index < word.length
		alphabet_letter = word[index]
		alphabet_index = alphabet.index(alphabet_letter) - 1
		new_word += alphabet[alphabet_index]
		index += 1 
	end
	new_word
end

# Driver code:

valid = false
until valid
	puts ""
	puts "Would you like to encrypt or decrypt a password?"
	print "> "
	choice = gets.chomp.downcase
	case choice
		when "encrypt"
			valid = true
			puts ""
			puts "Encrypt a password:"
			print "> "
			password = gets.chomp.downcase
			# How to take only letters?
			puts(encrypt(password))
		when "decrypt"
			valid = true
			puts ""
			puts "Decrypt a password:"
			print "> "
			password = gets.chomp.downcase
			puts(decrypt(password))
		else
			puts ""
			puts "I didn't get that"
	end
end

=begin
puts ""
puts (encrypt ("agent"))
puts (decrypt ("bhfou"))

puts ""
puts (encrypt ("abc"))
puts (encrypt ("zed"))
puts (decrypt ("bcd"))
puts (decrypt ("afe"))

puts ""
puts (decrypt (encrypt ("swordfish")))
# This nested call works because pretty much, we are passing
# the method call & return value of encrypt as the argument of
# decrypt
=end





