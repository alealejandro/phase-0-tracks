def name_changer(full_name)
	names_array = full_name.downcase.split(' ')
	new_name = []
	names_array.each do |name|
		new_name << "#{letter_changer(name).capitalize}" 
	end
	first = new_name[1]
	last = new_name[0]
	puts "\n#{full_name} > #{first} #{last}"
end

def letter_changer(name)
	vowels = ['a', 'e', 'i', 'o', 'u']
	new_str = ""
	i = 0
	while i < name.length
		letter = name[i] # iterating through string
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

def set_name
	valid = false
	until valid
		puts "\nEnter a name or 'quit'" 
		print "\n> "
		name = gets.chomp

		name_check_array = name.scan(/./)
		i = 0
		while i < name_check_array.length
			if name_check_array[i].match(/[[:alpha:]]/) || name_check_array[i].match(/[[:blank:]]/)
				i += 1
				valid = true
			else
				puts "\nInvalid."
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

# Can only work on a full name of 0, 1, 2 names
$name = ""
while $name != "quit"
	set_name
	if $name == "quit"
		print 
	else
		name_changer($name)
	end
end