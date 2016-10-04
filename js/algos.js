////////// Release 0: Find the Longest Phrase //////////

/* Initial Pseudocode BubbleSort
  // Function that takes an array of words/phrases & returns the longest word/phrase in the array
    // Input: Bunch of words
    // Steps: 
      // Initial (Bubble sort)
        // for each word in the array,
	        // Measure the length of each word supplied by the array
	        // Store length of word in new array
	      // Out of lengths in new array, find largest
	        // Compare first element with second,
	          // If first item is greater, compare with 3rd
	          // If second item is greater, compare with 3rd
	          // etc
    // Output: Longest word
*/

/* Analogy function using numbers, more basic to test idea
	var ar = [1, 3, 2, 4, 8, 0];

	var bubbleSort = function(array) {
		for (j = 0; j < array.length; j++) { 
		// Outer, how many times to iterate through array
		  for (i = 0; i < array.length; i++) { 
		  // Inner, to compare elements
		  	if (array[i] > array[i+1]) {
		  		temp = array[i]; // store bigger value
		  		array[i] = array[i+1]; // smaller index gets smaller value
		  		array[i+1] = temp; // bigger index gets bigger value
		  	}
		  }
	  }
	  return array;
	}

	console.log(bubbleSort(ar));
*/

/* Updated BubbleSort Pseudocode after analogy 
  // Function to sort array of words
    // Outer loop that goes iterates the inner loop for each word in array
      // Inner loop that actually compares
        // If the length of word at the current index > length of word at next index
          // Trade places
    // Return the last word from updated array

  // Use < array.length - 1 (because edge case comparison nil)
    // Worked in numbers analogy because nil >> 0 falsey
*/

var ar = ["a", "abc", "abcd", "abcdef", "ab", "abcde"];

var bubbleSort = function(array) {
	for (j = 0; j < array.length - 1; j++) {
		for (i = 0; i < array.length - 1; i++) {
			if (array[i].length > array[i+1].length) {
				temp = array[i];
				array[i] = array[i+1];
				array[i+1] = temp;
			};
		};
	return array[array.length - 1];
  };
};

console.log(bubbleSort(ar));

/* QuickSort Pseudocode after BubbleSort Implementation
  // Finds a pivot point
    // If <= pivot point
      // Move to left of pivot point
    // If > pivot point
      // Move to right of pivot point
*/



////////// Release 1: Find a Key-Value Match //////////



/* Initial Pseudocode
  // Function takes 2 objects
    // Specs:
	    // Check to see if the objects share at least 1 KV pair
	      // If shared KV pair, return true
	      // If no matches, return false
	  // Input: 2 objects
	  // Steps:
	    // For 1st property of obj1, check against all properties of obj2
	      // If there is a key in obj2 that matches obj1 current key, 
	        // Check if their values are the same
	          // If match, return true
			      // If no match, return false
			        // Go to next property of obj1
			        // Check 2nd property of obj1 against all properties of obj2
			        // LOOP
	    // Need 2 loops
	      // Outer to go through each property of obj1
	      // Inner to check given property of obj1 against all properties of obj2
	  // Output: boolean
*/

// Break into smaller pieces 

/* First, check if I can access key value pairs of an object:
	var person = {name: 'jim', age: 21};

	var access_each_kv = function(object) {
	  for (var property in object) {
	  	value = object[property]
			console.log(property + ": " + value);
	  }
	}
	access_each_kv(person);
	console.log();
*/

// Seems to work, now check if I can match

var person1 = {name: 'jim', age: 21, hasDog: true};
var person2 = {name: 'mike', age: 21, hasDog: false};

var match_kv = function(obj1, obj2) {
	match = false;
  for (var key1 in obj1) {
  	//console.log("For " + key1 + " in obj1");
  	for (var key2 in obj2) {
  		//console.log("  " + key2 + " in obj2");
  		if (key1 == key2) {
  			if (obj1[key1] == obj2[key2]) {
  				//console.log("\nMATCHED\n");
  				match = true;
  			}
  		}
  	}
  }
  return match;
}
console.log(match_kv(person1, person2));



////////// Release 2: Generate Random Test Data //////////



/* Initial Pseudocode
  //  Function that takes an integer for length, builds & returns an array of strings of the given length

  //  Example: arg = 3, we get an array of 3 random words back, which are of randomly varying length between 1 & 10

    //  Input: 
      //  Integer that indicates length of array
    //  Steps:
      //  Create an empty array
      //  Make a counter 
      //  Until counter hits integer input
        //  For each count
          //  Choose length of word
          //  Choose letters from alphabet until satisfies length of word
          //  Put a randomly generated word into the array
          //  Increment counter
    //  Output: 
      //  Array of length (input) 
      //  Contains gibberish strings of 1 <= string length <= 10
*/

var rand_array_generator = function(input_length) {
	output_array = [];
	for (i = 0; i < input_length; i++) {
		
	}
}
