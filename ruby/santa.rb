# Business Logic

class Santa
	attr_accessor :gender, :age, :ethnicity
	# All accessors bc build_many_santas

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
end 

def build_many_santas(int)
	santas = []
	example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
	example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
	i = 1
	until i == int
		santa = Santa.new(example_genders.sample, example_ethnicities.sample)
	santa.age = Random.new.rand(1...140)
	santas << santa
	i += 1
	end
	santas
end

def print_attributes(list_of_santas)
	list_of_santas.each do |santa|
		print "#{santa.gender}, #{santa.ethnicity}, #{santa.age}\n\n"
	end	
end

# Driver code

lots_of_santas = build_many_santas(10)
puts 
print_attributes(lots_of_santas)