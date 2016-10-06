# Virus Predictor

# I worked on this challenge [by myself, with: Ian Judson].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# Similar to require statement, it loads a file. 
# The 'relative' portion seems to denote that the file is in the same directory

# CONSTANT is accessible, even if from other file
require_relative 'state_data'

class VirusPredictor

  # sets instance variables as arguments, pulls from STATE_DATA
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calling predicted_deaths & speed_of_spread
  # Since the arguments being passed into predicted_deaths & speed_of_spread are ultimately instance variables, we don't need to use parameters, as instance variables are accessible by an instance.
  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  private
  # r/w privs, accessibility
  # Affecting scope 
  # Methods that are dangerous should only be called under the appropriate circumstances
  # Trust to use virus_effects, but not predicted_deaths; safer

  def pop_density_scale 
    scale = 0
    if @population_density >= 200
      scale = 5
    elsif @population_density >= 150
      scale = 4
    elsif @population_density >= 100
      scale = 3
    elsif @population_density >= 50
      scale = 2
    else
      scale = 1
    end
  end

  # Based on instance variable values, we get number_of_deaths, and the method prints out result
  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density

    scale = pop_density_scale

    case scale
    when 5
      number_of_deaths = (@population * 0.4).floor
    when 4
      number_of_deaths = (@population * 0.3).floor
    when 3
      number_of_deaths = (@population * 0.2).floor
    when 2
      number_of_deaths = (@population * 0.1).floor
    when 1 
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Taking instance variable values and setting speed based on the population_density, then prints out result
  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    scale = pop_density_scale

    case scale
    when 5
      speed += 0.5
    when 4
      speed += 1
    when 3
      speed += 1.5
    when 2
      speed += 2
    when 1 
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

puts

# how to access values of a key of a hash within a hash
STATE_DATA.each do |state_name, data|
  state = VirusPredictor.new(state_name, data[:population_density], data[:population])
  state.virus_effects
end

#=======================================================================
# Reflection Section

=begin

1. One uses a symbol, the other uses a hash rocket (generic form).

2. require_relative is similar to the require statement, it loads a file. The 'relative' portion seems to denote that the file is in the same directory

3. We can use .each on the hash and pass key/value pairs as parameters. We can use .each_key and pass only the key as a parameter. We can use .each_value and pass only the value as a parameter.

4. When refactoring virus_effects, the biggest lesson was that scope matters! Because we were only using instance variables in the methods virus_effects calls (predicted_deaths, speed_of_spread), there was no point in passing parameters to those methods because the instance variables' values we were trying to access are accessible from anywhere within the class.

5. Peter (our guide) was very helpful in clarifying concepts of Scope (Constants, @instance_variables, private methods). Scope is definitely something I will consider with more importance, as it allows each aspect of my program to provide a specific use - otherwise, why does it belong?

=end