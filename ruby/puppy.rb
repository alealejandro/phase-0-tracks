=begin

Puppy

	Characteristics
	  - Type of dog
	  - Loud/quiet
	  - Color
	  - Age
	  - Name

	Behavior
	  - Bark
	  - Eat
	  - Lick
	  - Sleep 

=end

# Define Puppy class
class Puppy
end

# Instantiate puppy instances of Puppy class
duchess = Puppy.new
fido = Puppy.new
spot = Puppy.new

# Call built-in methods for Class object
p spot.class
p fido.instance_of?(Puppy)