# Business Logic

class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

  def speak
  	puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(type)
  	puts "That was a good #{type}"
  end

  def celebrate_birthday
  	@age += 1
  	@age
  end

  def get_mad_at(reindeer_name)
  	@reindeer_ranking.delete(reindeer_name)
  	@reindeer_ranking.push(reindeer_name)
  	@reindeer_ranking
  end

  def gender=(new_gender)
  	@gender = new_gender
  end

  def age
  	@age
  end

  def ethnicity
  	@ethnicity
  end

end

def prompt_user
	santas = []
	loop do
		puts "Specify new santa's gender & ethnicity (delimited by a space) or type 'done' to exit:"
		print "\n> "
		santa_input = gets.chomp
		break if santa_input == "done"
		temp_array = santa_input.split(' ')
		santa = Santa.new(temp_array[0], temp_array[1])
		santas << santa
	end
	p santas
end

def display_santas(list)
	list.each do |santa|
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
	end
end
  

# Driver code

#list_of_santas = prompt_user
#display_santas(list_of_santas)
nick = Santa.new("male", "black")
p nick.celebrate_birthday
p nick.get_mad_at("Vixen")
p nick.age
p nick.ethnicity


=begin
nick = Santa.new("male", "black")
nick.about
nick.speak
nick.eat_milk_and_cookies("chocolate chip")
=end