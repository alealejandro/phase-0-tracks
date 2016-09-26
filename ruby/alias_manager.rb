def set_name
	valid = false
	until valid
		puts "\nEnter a name or 'quit'" 
		print "\n> "
		name = gets.chomp
		name_check_array = name.scan(/./)
		# each char as item in array
		i = 0
		while i < name_check_array.length
			if name_check_array[i].match(/[[:alpha:]]/) || name_check_array[i].match(/[[:blank:]]/)
				# if chars == alphabet char or blank space
				i += 1
				valid = true
			else
				puts "\nInvalid."
				# bad user input
				valid = false
				break
			end
		end
		if name == "quit"
			valid = true
			break
		end
	end
	$name = name
end

def name_changer(full_name)
  full_name = full_name.split.map(&:capitalize).join(' ') 
  # Save capitalized full name for output
	temp_names_array = full_name.downcase.split(' ')
	new_names_array = []
	temp_names_array.each do |name|
		# For each downcase name in temp_names_array, call letter changer method
		# Store result & capitalize for output
		new_names_array << "#{letter_changer(name).capitalize}" 
	end
	new_names_array = new_names_array.reverse
	i = 0
	result_string = ""
	while i < new_names_array.length 
	# full_name can consist of more than f_name & l_name
	# output/array should take note of whitespace:
		if i == new_names_array.length - 1
			result_string << "#{new_names_array[i]}"
		else
			result_string << "#{new_names_array[i]} "
		end
		i += 1
	end
	$names.store(full_name, result_string)
	puts "\n#{full_name} > #{result_string}"
end

def letter_changer(name)
	vowels = ["a", "e", "i", "o", "u"]
	new_str = ""
	i = 0
	while i < name.length
		letter = name[i] 
		# iterating through string	
		if vowels.include? letter	
			letter = vowel_changer(letter) 
		else 
			letter = consonant_changer(letter)
		end
		new_str << letter
		i += 1
	end
	new_str
end

def vowel_changer(letter)
	# if vowel, find out which vowel
	# then assign to next_vowel in vowels
	# then return letter 
	vowels = ["a", "e", "i", "o", "u"]
	next_vowel = ""
	vowels.each do |vowel|
		if letter == vowel
			if letter == vowels[4]
				next_vowel = vowels[0]
			else
				next_vowel = vowels[vowels.index(vowel).next]
			end
		end
	end
	letter = next_vowel
	letter
end

def consonant_changer(letter)
	vowels = ["a", "e", "i", "o", "u"]
	if letter == "z"
				letter = "b"
	else 
		letter = letter.next
		if vowels.include? letter # if next letter is a vowel
			letter = letter.next # next letter of vowel is a consonant
		end
	end
	letter
end

# set_name | name_changer > letter_changer > vowel_changer, consonant_changer

# Initialize global variables
$name = ""
$names = {}
while $name != "quit"
	set_name
	if $name == "quit"
		print 
	else
		name_changer($name)
	end
end

puts ""
$names.each { |key, value| puts "'#{key}' AKA '#{value}'" }
puts $names

# How can I make more use of iteration in replacement of my loops?