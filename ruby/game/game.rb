=begin
Create a word-guessing game class
  - Driver code will handle I/O (gets.chomp & converting)
    - Class is for computer, Driver is for human to computer translation
  - User1 enters word
  - User2 guesses word
  - Number of guesses limited & related to length of word
  - Repeated guesses do not increment guess count
  - User2 gets continual feedback on current state of word based on what the user enters/guesses
  - User2 gets congrats message IF win, taunt IF lose

	Create a class Game
	  Set accessor variables based on instance variables
	    :guess_count
	    :is_over
	    :secret_word
	    :secret_word_array = []

		Initialize
		  @guess_count = 0
		  @is_over = false
		  @secret_word = ''
		  @secret_word_array = []

		Guess_word(input letter)
		  Increment guess count
		  LOOP 
		    For each index in secret_word_array
			    IF input letter is a letter in secret word
			    	display feedback
			    IF input string != any letter in secret word
			      display feedback
			      guess again!

	Create Driver Code
	  Prompt user1 to enter word
	  	Save user1 input as array
	  	Assign each letter of input to index in an array
	  Prompt user2 to guess
	    Print out string of _'s based on indexes of array.
	    Ask to guess word/letter
	    IF all letters filled & is_over, you win!
	    ELSE
	      Is the num_guess > input.length - 1?
	        IF so, you lose
	        Otherwise, keep guessing
=end

class Game
	attr_accessor :guess_count, :is_over, :guesses_allowed, :feedback

	def initialize
		@guess_count = 0
		@is_over = false
		@secret = ""
		@feedback = []
		@guesses = []
	end

	def set_secret(word)
		@secret = word
		@secret_array = @secret.chars
		@guesses_allowed = @secret_array.uniq.length
		set_feedback
		@secret #rspec
	end

  def set_feedback
		@secret_array.each do 
			@feedback << "_"
		end
  end

  def display_feedback
  	@feedback.each do |char|
  		print "#{char} "
  	end
  end

  def revise_feedback(letter)
		@secret_array.each_index do |i|
			if @secret_array[i] == letter
				@feedback[i] = letter
			end
		end
	end

	def check_over
		if !@feedback.include?("_")
			puts 
			puts " Congrats! You've won! ".center(40, '-')
			@is_over = true
		elsif @guess_count > @guesses_allowed
			puts
			puts " Ha! You've lost! ".center(40, '-')
			@is_over = true
		else
			@is_over = false
		end
	end

	def check_used_before(letter)
		if @guesses.include?(letter)
			true
		end
	end

	def guess_letter(letter)
		puts
		@guess_count += 1
		@guesses << letter
		revise_feedback(letter)
		display_feedback
		puts
	end
end

puts 
puts " Welcome to the Guessing Game ".center(40, '-')
game = Game.new
puts 

puts " User 1 ".center(20, '-').center(30) 
puts "\nPlease enter a word to guess:"
print "\n> "
input = gets.chomp
game.set_secret(input)
puts 

puts " User 2 ".center(20, '-').center(30)
puts
game.display_feedback
puts
game.guess_count += 1
while !game.is_over
	game.check_over
	break if game.is_over
	# if check_over @is_over = false, then
  puts "\nGuess Count: #{game.guess_count} / #{game.guesses_allowed}"
	puts "Please enter a letter to guess:"
	print "\n> "
	guess = gets.chomp
	if game.check_used_before(guess)
		next
	else
	game.guess_letter(guess)
	end
end
