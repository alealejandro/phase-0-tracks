puts ""

valid = false
until valid
	puts "How many employees will be processed?"
	print "> "
	number_employees = gets.chomp.to_i
	if number_employees > 0
		valid = true
	else
		puts ""
		puts "I didn't understand you."
	end
end

i = 1
while i <= number_employees

	puts ""
	puts "What is your name?"
	print "> "
	name = gets.chomp.downcase
	# How to check for valid input on string?

	puts ""
	valid = false
	until valid
		puts "How old are you?"
		print "> "
		age = gets.chomp.to_i
		if age > 0
			valid = true
		else
			puts ""
			puts "I didn't understand you."
		end
	end

	puts ""
	valid = false
	until valid
		puts "What year were you born?"
		print "> "
		birth_year = gets.chomp.to_i
		if birth_year > 0
			valid = true
		else
			puts ""
			puts "I didn't understand you."
		end
	end

	if age == (2016 - birth_year)
		correct_age = true
	else
		correct_age = false
	end

	puts ""
	valid = false
	until valid
		puts "Our company cafeteria only serves garlic bread. Should we order some for you (y/n)?"
		print "> "
		garlic = gets.chomp.downcase
		case garlic
			when "y"
				garlic = true
				valid = true
			when "n"
				garlic = false
				valid = true
			else
				puts ""
				puts "I didn't understand you."
		end
	end

	puts ""
	valid = false
	until valid
		puts "Would you like to enroll in the company's health insurance (y/n)?"
		print "> "
		insurance = gets.chomp.downcase
		case insurance
			when "y"
				insurance = true
				valid = true
			when "n"
				insurance = false
				valid = true
			else
				puts ""
				puts "I didn't understand you."
		end
	end

	op_1 = "Probably not a vampire."
	op_2 = "Probably a vampire."
	op_3 = "Almost certainly a vampire."
	op_4 = "Definitely a vampire."
	op_5 = "Results inconclusive."

	result = ""

	case name
		when "drake cula"
			result = op_4
		when "tu fang"
			result = op_4
		else
			case correct_age
				when true
					if garlic || insurance
						result = op_1
					else
						result = op_5 #(!garlic, !insurance)
					end
				when false
					if !garlic && !insurance #(!garlic, !insurance) AND
						result = op_3
					elsif !garlic || !insurance #(!garlic || !insurance) OR
						result = op_2
					else
						result = op_5 #(garlic, insurance) AND
					end
			end
	end

	puts ""
	puts "Please list any allergies, one at a time. Type: 'done' when finished."
	valid = false
	until valid
		print "> "
		allergy = gets.chomp.downcase
		case allergy
			when "sunshine"
				result = op_2
				valid = true
			when "done"
				valid = true
			else
				puts ""
				puts "Any others?"
		end
	end

	puts ""
	puts ""
	puts("---------- #{name.split.map(&:capitalize).join(' ')}: #{result} ----------")
	puts ""

	i += 1
end

puts ""
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."