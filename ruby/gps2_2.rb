# Passing data between different methods
# How methods interact with each other without using a class structure 

# Grocery list
  # Create a new list
  # Add an item with a quantity to the list
  # Remove an item from the list
  # Update quantities for items in your list
  # Print the list (Formatting output)

=begin
Pseudocode:
	Method: create a list
	Input: 
	  string of items separated by spaces
	Steps:
	  Create an empty hash
	  split the string by spaces, for each word put that word into a key in the hash
	  Set default quantity
	  Print list to console (using another method)
	Output: 
	  What data type? Hash

	Method: add an item to a list
	Input: 
	  Item name & optional quantity
	Steps:
	  Hash << (item, quantity) K/V
	Output:
	  update hash w/ new item

	Method: remove an item from the list
	Input: 
	  Reference hash, takes a parameter, removes it from hash
	Steps:
	  Take item name, remove it
	Output:
	  update hash

	Method: update the quantity of an item
	Input:
	  Refernce hash, select item & quantity to update
	Steps:
	  Item name & quantity as parameters
	Output:
	  Updated hash

	Method: print a list & make it look pretty
	Input: 
	  hash
	Steps:
	  iterate through hash & print key value pairs 
	  do some formatting
	Output:
	  print output
=end

# Business Logic

def create_list(items="")
	grocery_list = {}
	items_array = items.split(' ')
	items_array.each do |item|
		grocery_list[item] = 0
	end
	grocery_list
end

def add_to_list(item, qty=0, list)
  list[item] = qty
  puts "#{item} added"
end

def remove_from_list(item, list)
	list.delete(item)
	puts "#{item} removed"
end

def update_quantity(item, qty, list)
	list[item] = qty
	puts "#{item} updated"
end

def print_list(list)
	puts " Grocery List ".center(24, '-')
	puts
	list.each do |item, qty|
		puts "#{item.ljust(14)} #{qty.to_s.rjust(4)}"
	end
end
# edge case (ice cream - space) (user input)

# Test Code

puts
new_list = create_list
add_to_list("Lemonade", 2, new_list)
add_to_list("Tomatoes", 3, new_list)
add_to_list("Onions", 1, new_list)
add_to_list("Ice Cream", 4, new_list)
remove_from_list("Lemonade", new_list)
# How to make case insensitive?
# How to DRY add_to_list with iterator & input validation?
# Choose list, then method?
update_quantity("Ice Cream", 1, new_list)
# ice cream is an edge case if we create_list
puts
print_list(new_list)

=begin
Reflect
  Pseudocode:
    - I always felt this was a weakness of mine
    - Hard to plan out the entire blueprint 
    - Starting off with I/O made it easier to visualize what needed to be done
    - I understand that it should read like english, but I like using keywords like each, split, print, etc.

  Arrays v. Hashes:
    - It made sense to use a hash instead of an array (list) of arrays (item, quantity)
    - I wasn't as familiar with hash methods as I was with array ones
      - << in the pseudocode
      - grocery_list[item] = 0, line 64
      - Definitely challenging for this GPS

  Method return value:
    - Usually, the last line of the code
    - create_list returned the list hash, and so we were able to store that return value in a variable, through which we could pass as an argument to other methods
    - Definitely challenging for this GPS

  What args can be passed in methods?
    - Like mentioned above, the return value can be passed as an argument to another method, albeit, we can't call the method as an argument: thus, we stored the return value in a variable
    - Primitive data types
    - Data structures?

  How can you pass info between methods?
    - Though you could store some data in a global variable, it may not be the best choice 
      - What if you have multiple lists?
      - What if program gets more complex?
    - You can store the return value of a method in a variable, and pass that variable as an argument to another method
    - This was the biggest lesson from this GPS

  What concepts were solidified?
    - Storing the return value of a method in a variable & passing that variable as an argument to another method
    - Pseudocoding with I/O & steps

  What concepts are still confusing?
    - Hash methods & knowing where to look in the documentation
    - How to account for everything in the pseudocode
      - I feel that after experimenting w/ code, I recognize more & more things I need to account for; things I wouldn't recognize before when pseudocoding 
      - Maybe this just comes with experience?

=end



