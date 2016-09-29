=begin
module Shout
  def self.yell_angrily(words)
  	words + "!!!" + " :("
  end

  def self.yell_happily(words)
  	words + "!!!" + " :)"
  end
end

p Shout.yell_angrily("why")
p Shout.yell_happily("why")
=end

module Shout
	def yell_angrily(words)
		p words + "! :("
	end

	def yell_happily(words)
		p words + "! :)"
	end
end

class Adults
	include Shout
end

class Kids
	include Shout
end

adult = Adults.new
adult.yell_angrily("why")

kid = Kids.new
kid.yell_happily("why")