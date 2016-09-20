$client_details = {}

puts "\nPlease enter the following details of your client:"

# Name
def set_name
	valid = false
	until valid
		puts "\nWhat is the client's name?"
		print "\n> "
		name = gets.chomp

		name_check_array = name.scan(/./)
		i = 0
		until i == name_check_array.length
			if name_check_array[i].match(/[[:alpha:]]/) || name_check_array[i].match(/[[:blank:]]/)
				i += 1
				valid = true
			else
				puts "\nInvalid."
				valid = false
				break
			end
		end
	end
	$client_details[:name] = name
end
set_name

# Age
def set_age
	valid = false
	until valid
		puts "\nWhat is the client's age?"
		print "\n> "
		age = gets.chomp

		# Check if input is integer
		age_check_array = age.scan(/./)
		i = 0
		until i == age_check_array.length
			if age_check_array[i].match(/[[:digit:]]/)
				i += 1
				valid = true
			else
				puts "\nInvalid."
				valid = false
				break
			end
		end
	  age = age.to_i

	  # Check if age is > 0 years old
	  if age <= 0
	  	puts "\nInvalid."
	  	valid = false
	  else
	  	$client_details[:age] = age
	  end
	end
end
set_age

# Number of children
def set_num_children
	valid = false
	until valid
		puts "\nHow many children does the client have?"
		print "\n> "
	  num_children = gets.chomp

	  # Check if input is an integer
	  num_children_check_array = num_children.scan(/./)
	  i = 0
		until i == num_children_check_array.length
			if num_children_check_array[i].match(/[[:digit:]]/)
				i += 1
				valid = true
			else
				puts "\nInvalid."
				valid = false
				break
			end
		end
		num_children = num_children.to_i
		$client_details[:num_children] = num_children
	end
	# Age of children
	if num_children > 0
		puts "\nHow old are they?"
		$client_details[:age_children] = []
		nth_child = 1 
		until (nth_child > num_children)
			i = 0
			print"\n> "
			age = gets.chomp
			age_check_array = age.scan(/./)
			until i == age_check_array.length
				if age_check_array[i].match(/[[:digit:]]/)
					i += 1
				else
					puts "\nInvalid."
					break
				end
				# where to set valid = true
				if i == age_check_array.length # passed through string checker, then
					age = age.to_i
					$client_details[:age_children] << age
					nth_child += 1
				end
			end 
		end
	end
end
set_num_children



# Decor Theme
def set_decor
	puts "\nWhat is the client's preferrable decor theme?"
	print "\n> "
	$client_details[:decor] = gets.chomp
end
set_decor

# Output
output = "\n
Name:                #{$client_details[:name]}
Age:                 #{$client_details[:age]}
Number of Children:  #{$client_details[:num_children]}
Age of Children:     #{$client_details[:age_children]}
Decor Theme:         #{$client_details[:decor]}"
puts output

# Update a key?
puts "\nWould you like to update any details (y/n)?"
print "\n> "
response = gets.chomp.downcase
if response == "n"
	puts "\nHere are your client detials:"
	puts output

elsif response == "y"
	puts "\nPlease choose which field to update:\nname | age | num_children | age_children | decor"
	print "\n> "
	field = gets.chomp.downcase
	key = field.to_sym
	if $client_details.has_key?(key)
		case key 
			when :name
				set_name
			when :age 
				set_age
			when :num_children
				set_num_children
	  	when :age_children
			  set_num_children
			when :decor
				set_decor
	  end
	else
		puts "\nSorry, that's not a valid field."
	end
	# old output doesn't have new info bc it's pointing, not actually the value
	output_new = "\n
Name:                #{$client_details[:name]}
Age:                 #{$client_details[:age]}
Number of Children:  #{$client_details[:num_children]}
Age of Children:     #{$client_details[:age_children]}
Decor Theme:         #{$client_details[:decor]}"
	puts "\nHere are the updated client details:"
	puts output_new
else
	puts "\nSorry, that's not a valid field."
end


=begin
Create empty hash called client_details

Ask for client's name (str)
if input is a string of alphabet chars, store input in :name
Ask for age (str.to_i)
store in :age
Ask for number of children (int)
store in :num_child
Ask for decor theme (str)
store in :decor

p client_details

Ask if they need to update a value
if none 
	skip
elsif name
	- Convert string to symbol & apply changes there
	change :name
elsif age 
	change...
...
end
=end