# Passing data between different methods
# How methods interact with each other without using a class structure 

# Grocery list
  # Create a new list
  # Add an item with a quantity to the list
  # Remove an item from the list
  # Update quantities for items in your list
  # Print the list (Formatting output)

# Method to create a list
# Input: 
  # string of items separated by spaces
# Steps:
  # Create an empty hash
  # split the string by spaces, for each word put that word into a key in the hash
  # Set default quantity
  # Print list to console (using another method)
# Output: 
  # What data type? Hash

def create_list(items)
	grocery_list = {}
	items_array = items.split(' ')
	items_array.each do |item|
		grocery_list[item] = 0
	end
	grocery_list
end

# Method to ADD an item to a list
# Input: 
  # Item name & optional quantity
# Steps:
  # Hash << (item, quantity) K/V
# Output:
  # update hash w/ new item

def add_to_list(item, qty=0, list)
  list[item] = qty
  list
end
list = create_list("apple orange banana")
p add_to_list("berries", 10, list)

# Method to remove an item from the list
# Input: 
  # Reference hash, takes a parameter, removes it from hash
# Steps:
  # Take item name, remove it
# Output:
  # update hash

def remove_from_list(item, list)
	list.delete(item)
	list
end
p remove_from_list("berries", list)

# Method to update the quantity of an item
# Input:
  # Refernce hash, select item & quantity to update
# Steps:
  # Item name & quantity as parameters
# Output:
  # Updated hash

def update_quantity(item, qty, list)
	list[item] = qty
	list
end
p update_quantity("apple", 2, list)

# Method to print a list & make it look pretty
# Input: 
  # hash
# Steps:
  # iterate through hash & print key value pairs 
  # do some formatting
# Output:
  # print output

def print_hash(list)
	puts "Get this at the grocery"
	list.each do |item, qty|
		puts "#{item}: #{qty}"
	end
end
print_hash(list)