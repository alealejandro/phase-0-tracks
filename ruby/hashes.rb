=begin
Create empty hash called client_details

Ask for client's name (str)
store input in :name
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

client_details = {}

puts "\nPlease enter the following details of your client:"
puts "\nWhat is the client's name?"
print "\n> "
client_details[:name] = gets.chomp

puts "\nWhat is the client's age?"
print "\n> "
client_details[:age] = gets.chomp.to_i

puts "\nHow many children does the client have?"
print "\n> "
client_details[:num_children] = gets.chomp.to_i

puts "\nWhat is the client's preferrable decor theme?"
print "\n> "
client_details[:decor] = gets.chomp

puts "\n #{client_details}"

puts "\nWould you like to update any details (y/n)?"
print "\n> "
response = gets.chomp.downcase
if response == "n"
	puts "Great."
else
	puts "\nPlease choose which field to update:\n   name | age | num_children | decor"
	print "\n> "
	field = gets.chomp.downcase
	if field == "name"
		key = field.to_sym
		puts "What would you like to update the #{field} to?"
		print "\n> "
		update = gets.chomp
	  client_details[key] = update
		# select :name 
		# update value
	elsif field == "age"
		key = field.to_sym
		puts "What would you like to update the #{field} to?"
		print "\n> "
		update = gets.chomp.to_i
		client_details[key] = update
	elsif field == "num_children"
		key = field.to_sym
		puts "What would you like to update the #{field} to?"
		print "\n> "
		update = gets.chomp.to_i
		client_details[key] = update
	elsif field == "decor"
		key = field.to_sym
		puts "What would you like to update the #{field} to?"
		print "\n> "
		update = gets.chomp
		client_details[key] = update
	else
		puts "\nSorry, that's not a valid field."
	end
end

puts "\nHere are the updated client details: \n\n#{client_details}"







