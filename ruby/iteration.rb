
# Release 0
puts ""
puts "Release 0".ljust(30, " -")
puts ""

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

# Release 1
puts ""
puts "Release 1".ljust(30, " -")
puts ""
puts " Array ".center(30, "-")
puts ""

puts ".each".center(30)
puts ""
letters = ["a", "b", "c"]
puts "Before: #{letters}"
letters.each do |letter|
  letter = letter.next
  print "=> #{letter} "
end
puts "\nAfter: #{letters}\n\n"
# Not changed to array of nils (puts) because .each not permanent
puts ".map!".center(30)
puts ""
puts "Before: #{letters}"
letters.map! do |letter|
	letter = letter.next
	print "=> #{letter} "
	letter
end
puts "\nAfter: #{letters}"

puts ""
puts " Hash ".center(30, "-")
puts ""

puts ".each".center(30)
puts ""
office = {
	"Pam" => "Jim",
	"Jim" => "Pam",
	"Michael" => "Jan",
	"Angela" => "Dwight"
}
office.each { |person, crush| puts "#{person} likes #{crush}"}

# Release 2
puts ""
puts "Release 2".ljust(30, " -")
puts ""
puts " Array ".center(30, "-")
puts ""
# iterate through & delete any that don't meet criteria
nums = [1,2,3,4,5]
puts "Original array: #{nums}"
nums.reject! { |num| num < 4} # => 1,2,3
puts "After .reject!: #{nums}" 
puts ""
# filter/keep only items that meet criteria 1
nums = [1,2,3,4,5]
puts "Original array: #{nums}"
nums.select! { |num| num < 4} 
puts "After .select!: #{nums}"
puts ""
# filter/keep only items that meet criteria 2
nums = [1,2,3,4,5]
puts "Original array: #{nums}"
nums.keep_if { |num| num < 4}
puts "After .keep_if: #{nums}"
puts ""
# remove items until condition in block evaluates to false, then stop
nums.push(4, 5)
puts "Original array: #{nums}"
dropped = nums.drop_while { |num| num < 4}
puts "After .drop_while: #{dropped}"

puts ""
puts " Hash ".center(30, "-")
puts ""
# iterate through & delete any that don't meet criteria
office = {
	"Pam" => "Jim",
	"Jim" => "Pam",
	"Angela" => "Dwight",
	"Michael" => "Jan"
}
puts "Original: #{office}"
office.delete_if { |person, crush| person == "Michael"}
puts "After .delete_if: #{office}"
puts ""
# filter/keep only items that meet criteria 1
office = {
	"Pam" => "Jim",
	"Jim" => "Pam",
	"Angela" => "Dwight",
	"Michael" => "Jan"
}
puts "Original: #{office}"
office.select! {|person, crush| person == "Pam" || person == "Jim"}
puts "After .select!: #{office}"
puts ""
# filter/keep only items that meet criteria 2
office = {
	"Pam" => "Jim",
	"Jim" => "Pam",
	"Angela" => "Dwight",
	"Michael" => "Jan"
}
puts "Original: #{office}"
office.keep_if {|person, crush| person == "Pam" || person == "Jim"}
puts "After .keep_if: #{office}"
puts ""
# remove items until condition in block evaluates to false, then stop
office = {
	"Pam" => "Jim",
	"Jim" => "Pam",
	"Angela" => "Dwight",
	"Michael" => "Jan"
}
puts "Original: #{office}"
office.each_key do |person|
	if person != "Michael"
		office.delete(person)
	end
end
puts "After .each_key & .delete: #{office}"