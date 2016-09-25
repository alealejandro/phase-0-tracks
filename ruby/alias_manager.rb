# Swap the first & last name
# Change vowels to next vowel, all consonants to next consonant

# Convert string to an array
# Figure out whether a letter is a vowel
# How to deal with uppercase
# How to handle edge cases (u, z)

name = "Felicia Torres"

def name_changer(full_name)
	names_array = full_name.downcase.split(' ')
	new_name = ""
	names_array.each do |name|
		new_name << "#{letter_changer(name).capitalize} "
	end
	new_name_array = new_name.split(' ') # string
	first = new_name_array[1]
	last = new_name_array[0]
	puts "#{first} #{last}"
	# Change positions of f & l names
end

def letter_changer(str_array)
	vowels = ['a', 'e', 'i', 'o', 'u']
	new_str = ""
	i = 0
	until i == str_array.length
		letter = str_array[i]
		if vowels.include? letter
			if letter == vowels[0]
				new_str << vowels[1]
			elsif letter == vowels[1]
				new_str << vowels[2]
			elsif letter == vowels[2]
				new_str << vowels[3]
			elsif letter == vowels[3]
				new_str << vowels[4]
			else
				new_str << vowels[0]
			end
		else # consonant
			if letter == "z"
				letter = "b"
			else
				letter = letter.next
				if vowels.include? letter
					letter = letter.next
		    end
		  new_str << letter
			end
		end
		i += 1
	end
	new_str
end
puts "#{name} has been changed to: "
name_changer(name)
# Instead of interpolation, maybe split by word and switch their indexes inside method
# Instead of capitalization in interpolation, maybe capitalize within method by split word
# All within one method
# - A method can call other methods
  			