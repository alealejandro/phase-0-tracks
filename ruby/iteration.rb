def say_hey
	n1 = "Jim"
	n2 = "Michael"
	puts "Before yield: #{n1}, #{n2}"
	yield(n1, n2)
	puts "After yield: #{n1}, #{n2}"
end

say_hey {|n1, n2| 
	n1 = n1 + " Halpert"
	n2 = n2 + " Scott"
	puts "yield: #{n1}, #{n2}"
}