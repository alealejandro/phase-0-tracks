# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
puts "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”
puts ""

# "zom".<???>
puts "zom".gsub("o", "oo")
puts "zom".sub("o", "oo")
# tr?
# => “zoom”
puts ""

# "enhance".<???>
puts "enhance".center(15)
# ljust, rjust?
# => "    enhance    "
puts ""

# "Stop! You're under arrest!".<???>
puts "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
puts ""

# "the usual".<???>
a = "the usual"
puts a + " suspects"
puts a.gsub("l", "l suspects")
puts a.sub("l", "l suspects")
puts a << " suspects"
#=> "the usual suspects"
puts ""

# " suspects".<???>
a = " suspects"
puts a.insert(0, "the usual")
a = " suspects"
puts a.prepend("the usual")
puts a.replace("the usual suspects")
a = " suspects"
puts a.rjust(18, "the usual")
puts a.gsub(" s", "the usual s")
puts a.sub(" s", "the usual s")	
# => "the usual suspects"
puts ""

# "The case of the disappearing last letter".<???>
a = "The case of the disappearing last letter"
puts a[0, 39]
puts a[0..38]
puts a[0...39]
puts a["The case of the disappearing last lette"]
puts a.byteslice(0, 39)
puts a.byteslice(0..38)
puts a.byteslice(0...39)
puts a.chop
# delete("r") - how to target last r?
puts a.gsub("er", "e")
puts a.replace("The case of the disappearing last lette")
a = "The case of the disappearing last letter"
puts a.slice(0, 39)
puts a.slice(0..38)
puts a.slice(0...39)
puts a.sub("er", "e")
# => "The case of the disappearing last lette"
puts ""

# "The mystery of the missing first letter".<???>
a = "The mystery of the missing first letter"
puts a[1, 39]
puts a[1..38]
puts a[1...39]
puts a["he mystery of the missing first letter"]
puts a.byteslice(1, 39)
puts a.byteslice(1..38)
puts a.byteslice(1...39)
puts a.delete("T")
puts a.gsub("T", "")
puts a.replace("he mystery of the missing first letter")
a = "The mystery of the missing first letter"
# replace seems to mutate the caller
puts a.slice(1, 39)
puts a.slice(1..38)
puts a.slice(1...39)
puts a.sub("T", "")
# => "he mystery of the missing first letter"
puts ""

# "Elementary,    my   dear        Watson!".<???>
a = "Elementary,    my   dear        Watson!"
puts a.gsub("    ", " ").gsub("  ", " ").gsub("  ", " ")
puts a.replace("Elementary, my dear Watson!")
a = "Elementary,    my   dear        Watson!"
puts a.squeeze
puts a.sub("    ", " ").sub("  ", " ").sub("  ", " ").sub("        ", " ")
# => "Elementary, my dear Watson!"
puts ""

# "z".<???>
puts "z".to_i + 122
puts "z".hex + 122
puts "z".replace("122").to_i
puts "z".next.to_i + 122
puts "z".succ.to_i + 122
puts "z".oct + 122
puts "z".ord
puts "z".size + 121
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
puts ""

# "How many times does the letter 'a' appear in this string?".<???>
a = "How many times does the letter 'a' appear in this string?"
puts a.count "a"
# each_char , count if == 'a' ? (iteration)
# match , iterate after the index position returned?
# partition by "a", # of elements in array - 1 ?
# MatchData Class ?
# => 4