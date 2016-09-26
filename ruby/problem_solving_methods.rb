# Release 0 Simple Search

def search_array(int_array, int_target)
	i = 0
	while i < int_array.length
    int_array.each do |int|
      if int_target == int_array[i]
      	return i
      else 
      	i += 1
      end
    end
  end
end

ar = [42, 89, 23, 1]
p search_array(ar, 1)
p search_array(ar, 3)

# Release 1 Fibonacci Numbers

def fib(num_terms)
	fib_array = [0, 1]
	# for x num_terms, fill in array with terms needed
	i = 0
	while i < num_terms - 2 
		result = fib_array[i] + fib_array[i+1]
		fib_array << result
		i += 1
	end
  fib_array
end
p fib(12)	
p fib(100).last

# Release 2 Sort an Array

=begin
	
Bubble Sort
- Visualization & youtube videos helped me understand this concept
- I was interested to understand how it works, but have trouble seeing applications for bubble sorting other than with an integer array
- Implementation was difficult, looping didn't work as I wanted & was hard to see how I could iterate instead
- As I began pseudocoding, I noticed it pretty much translates straight to ruby:

create method that bubble sorts an array
  for every index in the array
  	if the value of current index > value at next index
  	  swap values
  	  check the next value
  	else (if <)
  		go to next index 
    end
  end
end

- Translate a bit to Ruby

def bubble sort method(array)
  i = 0
  while i < array.length
  	if array[i] > array[i+1]
  		switch values
  	else
  		go to next i
  		i += 1
  	end
  end
end

- while doesn't seem to work so I'll iterate
- Didn't recognize: Loop within a loop

def bubble_sort(array)
	keep_going = true
  array.each do |i|
  	until keep_going == false
	  	if array[i] > array[i + 1]
	  		array[i], array[i + 1] = array[i + 1], array[i]
	  		keep_going = true
	  	else
	  		keep_going = false
	    end
	  end
  end
  array
end
ar = [3,2,1,4]
p bubble_sort(ar)

- Started to want to look for solutions
- Couldn't see why the logic wasn't working 
- Desparate to understand why

def bubble_sort(array)
	keep_going = true
  array.each_index do |i|
  	until keep_going == false
	  	if array[i] > array[i + 1]
	  		array[i], array[i + 1] = array[i + 1], array[i]
	  		keep_going = true
	  	else
	  		keep_going = false
	    end
	  end
  end
  array
end
ar = [3,2,1,5,4]
p bubble_sort(ar)

- Changed from each to each_index (ruby doc), seemed to help
- Now the value at index 0 gets changed with the value at index 1, but DOESNT KEEP GOING
- NO OTHER INDEXES get changed as well

- Understood
  - Iterate through each index in array.length - 1
    - Check if value at current index > value at next index
      - If true, swap values
        - Now check swapped value at new index against new next index
          - SEEMS TO BE WHERE ERROR IS
        - Keep going unless array[i] < array[i + 1]
      - If false, go to next index in array & start over 
        - DIDN'T WORK HERE EITHER

      [3, 0, 2, 1]
      [0, 3, 2, 1]
    ERROR
      [0, 2, 3, 1]
      [0, 2, 1, 3]
    ERROR
      [0, 1, 2, 3]

		- So none of my loops seem to be working, even though I implemented a loop within a loop
		
- Confused
  - Why iterate & not use a loop?
  - why does array.each_index do |i| not work
		- why use num & times
	- why didn't my if-else statement that changed the keep_going not work
	  - why does loop do work?
	  	- * * * INFINITE UNTIL BREAK * * *
	- why didn't until condition (keep_going) not work?
	  - why do we have to loop do instead & break if not sorted
	- LOOPING
	- CONDITIONAL FLOW
	- ITERATORS
	- I thought I had these concepts down, but when implementing, produces UNEXPECTED results

=end

def bubble_sort(array)
	num = array.length
	loop do 
		sorted = false
		(num-1).times do |i|
			if array[i] > array[i + 1]
				array[i], array[i + 1] = array[i + 1], array[i]
				sorted = true
			end
		end
		break if not sorted
	end
	array
end
x = [1,3,4,24,23,4,42,23,4,55,11,2]
p bubble_sort(x)

