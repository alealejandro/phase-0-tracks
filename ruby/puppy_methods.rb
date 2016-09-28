# Business Logic

class Puppy
	def initialize
		puts "Initializing new puppy instance..."
	end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  	puts "Woof! " * int
  end

  def roll_over
  	puts "**rolls over**"
  end

  def dog_years(int)
  	dog_age = int * 7
  end

  def sniff
  	puts "Hmm..."
  end
end

class Book
  def initialize(author="", title="")
  	puts "Creating a new book..."
  	if author != ""
  	  puts author
  	end
  	if title != ""
	  	puts title
	  end
  end

  def flip_forward(current_page=0)
  	puts "Flipping forward to page: #{current_page + 1}"
  	current_page = current_page += 1
  end

  def flip_backward(current_page=0)
  	puts "Flipping back a page to: #{current_page - 1}"
  	current_page = current_page -= 1
  end
end

# Driver Test Code

fido = Puppy.new

fido.fetch("ball")
fido.speak(3)
fido.roll_over
puts fido.dog_years(2)
fido.sniff

spot = Puppy.new
puts

book1 = Book.new("Seuss", "Cat in the Hat")
page = 200
page = book1.flip_forward(page)
book1.flip_backward(book1.flip_forward(page))
puts

def create_books(target)
	books = []
	i = 1
	until i > target
		book = Book.new
		books << book
		i += 1
	end
	books
end

some_books = create_books(50)
some_books.each do |book|
	book.flip_forward
end

