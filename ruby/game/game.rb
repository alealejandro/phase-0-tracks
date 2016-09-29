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

	def initialize
		@guess_count = 0
		@is_over = false
	end

end

puts "Welcome to "
game = Game.new