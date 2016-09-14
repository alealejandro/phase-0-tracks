puts "What's the hamster's name?"
name = gets.chomp
name = name.split.map(&:capitalize).join(' ')
# split.map(&:capitalize).join(' ')
# pretty much runs an each, do on each of the names, split by a space
# the names are then capitalized, and joined together with a space
# https://stackoverflow.com/questions/13520162/ruby-capitalize-every-word-first-letter

puts ""
valid_input = false
until valid_input
	puts "How loud is the hamster (1-10)?."
	volume = gets.chomp
	volume = volume.to_f
	if volume > 0 && volume <= 10
		valid_input = true
	else
		puts ""
		puts "I didn't understand you."
	end
end
# Valid input only from  0.0 - 10.0

puts ""
puts "What is its fur color?"
color = gets.chomp
color = color.capitalize

puts ""
valid_input = false
until valid_input
	puts "Is the hamster a good candidate for adoption (y/n)?"
	good = gets.chomp
	good = good.downcase
	if good == "y"
		good = true
		valid_input = true
	elsif good == "n"
		good = false
		valid_input = true
	else
		puts ""
		puts "I didn't understand you."
	end
end
# Valid input only y/n
# Output is capitalized boolean.to_s

puts ""
valid_input = false
until valid_input
	puts "What is its age?"
	age = gets.chomp
	if age == ""
		age = nil
		valid_input = true
	elsif age.to_f > 0 
		age = age.to_f
		valid_input = true
	else
		puts ""
		puts "I didn't understand you."
	end
end
# Takes "" as input > nil
# Takes any number > 0 as valid (no hamster will be 0.0 years old)
# Has to be > 0 because .to_i / .to_f both return 0 / 0.0 even if gibberish

puts ""
puts "             Name:     #{name}"
puts "           Volume:     #{volume}"
puts "            Color:     #{color}"
puts "   Good Candidate:     #{good.to_s.capitalize}"
puts "    Estimated Age:     #{age}"