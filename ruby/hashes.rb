client_details = {}
alpha_regex = /[[:alpha:]]+/
# age_regex = /[[:digit:]]+/

puts "\nPlease enter the following details of your client:"

# Name
valid = false
until valid
	puts "\nWhat is the client's name?"
	print "\n> "
	client_details[:name] = gets.chomp
	if client_details[:name].match(alpha_regex) 
	# is a string, but only doing one character - how to match all characters via iteration? map as array?
	# scan?
	# name.split.map(&:capitalize).join(' ')} (something similar)?
		valid = true
	else
		puts "\nInvalid, please try again."
	end
end

# Age
valid = false
until valid
	puts "\nWhat is the client's age?"
	print "\n> "
	client_details[:age] = gets.chomp.to_i
	#if client_details[:age].match(age_regex) # is a digit
	if client_details[:age] > 0
		valid = true
	else
		puts "\nInvalid, please try again."
	end
end

# Number of children & Age of children
valid = false
until valid
	puts "\nHow many children does the client have?"
	print "\n> "
	client_details[:num_children] = gets.chomp.to_i
	# to_i defaults to 0 if no number specified, so will always be valid...
	if client_details[:num_children] >= 0
		valid = true
		puts "\nHow old are they?"
		client_details[:age_children] = []
		i = 1
		until i > client_details[:num_children]
			print"\n> "
			client_details[:age_children] << gets.chomp.to_i
			i += 1
		end
	else
		puts "\nInvalid, please try again."
	end
end

# Decor Theme
puts "\nWhat is the client's preferrable decor theme?"
print "\n> "
client_details[:decor] = gets.chomp

# Output
puts "\nName:                #{client_details[:name]}
Age:                 #{client_details[:age]}
Number of Children:  #{client_details[:num_children]}
Age of Children:     #{client_details[:age_children]}
Decor Theme:         #{client_details[:decor]}"
# Store into variable?

# Update a key?
puts "\nWould you like to update any details (y/n)?"
print "\n> "
response = gets.chomp.downcase
if response == "n"
	puts "\nHere are your client detials:"
	puts "\nName:                #{client_details[:name]}
Age:                 #{client_details[:age]}
Number of Children:  #{client_details[:num_children]}
Age of Children:     #{client_details[:age_children]}
Decor Theme:         #{client_details[:decor]}"

elsif response == "y"
	puts "\nPlease choose which field to update:\nname | age | num_children | age_children | decor"
	print "\n> "
	field = gets.chomp.downcase
	key = field.to_sym
	if client_details.has_key?(key)
		puts "\nWhat would you like to update their #{field} to?"
		print "\n> "
		case key 
			when :name
				update = gets.chomp
				client_details[:name] = update
			when :age 
				update = gets.chomp.to_i
				client_details[:age] = update
			# :num_children & age_children have repeatable code
			when :num_children
				update = gets.chomp.to_i
				client_details[:num_children] = update

		  	puts "\nPlease update their ages as well:"
		  	client_details[:age_children] = []
		  	i = 1
		  	until i > client_details[:num_children]
		  		print"\n> "
		  		client_details[:age_children] << gets.chomp.to_i
		  		i += 1
		  	end
	  	when :age_children
			key == :age_children
			client_details[:age_children] = []
			i = 1
			until i > client_details[:num_children]
				print"\n> "
				client_details[:age_children] << gets.chomp.to_i
				i += 1
			end
			when :decor
			update = gets.chomp
			client_details[:decor] = update
	  end
	else
		puts "\nSorry, that's not a valid field."
	end
	puts "\nHere are the updated client details:"
	puts "\nName:                #{client_details[:name]}
Age:                 #{client_details[:age]}
Number of Children:  #{client_details[:num_children]}
Age of Children:     #{client_details[:age_children]}
Decor Theme:         #{client_details[:decor]}"
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