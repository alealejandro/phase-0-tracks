# Swap the first & last name
# Change vowels to next vowel, all consonants to next consonant

# Convert string to an array
# Figure out whether a letter is a vowel
# How to deal with uppercase
# How to handle edge cases

name = "Felicia Torres"
# switch to downcase, split into array of words
name_down = name.downcase
names_array = name_down.split(' ')
# switch first & last names
first_name = names_array[1]
last_name = names_array[0]
# create array of characters for first & last names
first_name_array = first_name.chars
last_name_array = last_name.chars

str = "felicia"
# Letter changer
#def letter_changer(str_array)
str_array = str.chars
	vowels = ['a', 'e', 'i', 'o', 'u']
	new_str_array = ""
	i = 0
	until i == str_array.length
		letter = str_array[i]
		if vowels.include? letter
			if letter == vowels[0]
				new_str_array << vowels[1]
			elsif letter == vowels[1]
				new_str_array << vowels[2]
			elsif letter == vowels[2]
				new_str_array << vowels[3]
			elsif letter == vowels[3]
				new_str_array << vowels[4]
			else
				new_str_array << vowels[0]
			end
		else # consonant
			letter = letter.next
			if vowels.include? letter
				letter = letter.next
		  end
		  new_str_array << letter
		end
		i += 1
	end
	puts new_str_array
#end
#def letter_changer(first_name_array)

  			