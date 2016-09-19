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
puts "the usual" + " suspects"
puts "the usual".gsub("l", "l suspects")
puts "the usual".sub("l", "l suspects")
puts "the usual" << " suspects"
#=> "the usual suspects"
puts ""

# " suspects".<???>
puts " suspects".insert(0, "the usual")
puts " suspects".prepend("the usual")
puts " suspects".replace("the usual suspects")
puts " suspects".rjust(18, "the usual")
puts " suspects".gsub(" s", "the usual s")
puts " suspects".sub(" s", "the usual s")	
# => "the usual suspects"
puts ""

# "The case of the disappearing last letter".<???>
puts "The case of the disappearing last letter"[0, 39]
puts "The case of the disappearing last letter"[0..38]
puts "The case of the disappearing last letter"[0...39]
puts "The case of the disappearing last letter"["The case of the disappearing last lette"]
puts "The case of the disappearing last letter".byteslice(0, 39)
puts "The case of the disappearing last letter".byteslice(0..38)
puts "The case of the disappearing last letter".byteslice(0...39)
puts "The case of the disappearing last letter".chop
# delete("r") - how to target last r?
puts "The case of the disappearing last letter".gsub("er", "e")
puts "The case of the disappearing last letter".replace("The case of the disappearing last lette")
puts "The case of the disappearing last letter".slice(0, 39)
puts "The case of the disappearing last letter".slice(0..38)
puts "The case of the disappearing last letter".slice(0...39)
puts "The case of the disappearing last letter".sub("er", "e")
# => "The case of the disappearing last lette"
puts ""

# "The mystery of the missing first letter".<???>
puts "The mystery of the missing first letter"[1, 39]
puts "The mystery of the missing first letter"[1..38]
puts "The mystery of the missing first letter"[1...39]
puts "The mystery of the missing first letter"["he mystery of the missing first letter"]
puts "The mystery of the missing first letter".byteslice(1, 39)
puts "The mystery of the missing first letter".byteslice(1..38)
puts "The mystery of the missing first letter".byteslice(1...39)
puts "The mystery of the missing first letter".delete("T")
puts "The mystery of the missing first letter".gsub("T", "")
puts "The mystery of the missing first letter".replace("he mystery of the missing first letter")
puts "The mystery of the missing first letter".slice(1, 39)
puts "The mystery of the missing first letter".slice(1..38)
puts "The mystery of the missing first letter".slice(1...39)
puts "The mystery of the missing first letter".sub("T", "")
# => "he mystery of the missing first letter"
puts ""

# "Elementary,    my   dear        Watson!".<???>
a = "Elementary,    my   dear        Watson!"
puts a.gsub("    ", " ").gsub("  ", " ").gsub("  ", " ")
puts a.replace("Elementary, my dear Watson!")
puts a.squeeze
puts a.sub("    ", " ").sub("  ", " ").sub("  ", " ")
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