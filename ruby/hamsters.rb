puts "What's the hamster's name?"
name = gets.chomp
name = name.capitalize

puts ""
valid_input = false
until valid_input
	puts "How loud is the hamster (1-10)?."
	volume = gets.chomp
	volume = volume.to_i
	if volume > 0 && volume < 11
		valid_input = true
	else
		puts ""
		puts "I didn't understand you."
	end
end

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
good = good.to_s.capitalize

puts ""
puts "What is its age?"
age = gets.chomp
if age == ""
	age = nil
else
	age = age.to_i
end

puts ""
puts "Name:             #{name}"
puts "Volume:           #{volume}"
puts "Color:            #{color}"
puts "Good Candidate:   #{good}"
puts "Estimated Age:    #{age}"