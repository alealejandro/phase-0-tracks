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
print "   > "
client_details[:name] = gets.chomp

puts "\nWhat is the client's age?"
print "   > "
client_details[:age] = gets.chomp.to_i

puts "\nHow many children does the client have?"
print "   > "
client_details[:num_children] = gets.chomp.to_i

puts "\nWhat is the client's preferrable decor theme?"
print "   > "
client_details[:decor] = gets.chomp

puts "\n #{client_details}"