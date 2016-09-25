# Swap the first & last name
# Change vowels to next vowel, all consonants to next consonant

# Convert string to an array
# Figure out whether a letter is a vowel
# How to deal with uppercase
# How to handle edge cases (u, z)

name = "Felicia Torres"

def name_changer(full_name)
	names_array = full_name.downcase.split(' ')
	new_name = []
	names_array.each do |name|
		new_name << "#{letter_changer(name).capitalize} " #new_str capitalize goes into new_name array
	end
	first = new_name[1]
	last = new_name[0]
	puts "\n#{full_name} has been changed to: "
	puts "#{first}#{last}"
end

def letter_changer(name)
	vowels = ['a', 'e', 'i', 'o', 'u']
	new_str = ""
	i = 0
	while i < name.length
		letter = name[i] # iterating through string name 
		if vowels.include? letter # if vowel,
			if letter == vowels[0]
				new_str << vowels[1]
			elsif letter == vowels[1]
				new_str << vowels[2]
			elsif letter == vowels[2]
				new_str << vowels[3]
			elsif letter == vowels[3]
				new_str << vowels[4]
			elsif letter == vowels[4]
				new_str << vowels[0]
			end
		else # if consonant,
			letter = letter.next 
			# had to do this first rather than checking letter == "z", otherwise "z"s got skipped over
			if letter == "aa"
				letter = "b"
			elsif
				vowels.include? letter
				letter = letter.next
		  end
		  new_str << letter
		end
		i += 1
	end
	new_str
end
name_changer(name)