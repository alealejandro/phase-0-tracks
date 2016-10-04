////////// Release 0 //////////

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

// Analogy function using numbers so more basic to test idea

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

// Function to sort array of words
  // Outer loop that goes iterates the inner loop for each word in array
    // Inner loop that actually compares
      // If the length of word at the current index > length of word at next index
        // Trade places
  // Return the last word from updated array

// while < array.length - 1 (because edge case comparison nil)
  // Worked in numbers analogy because nil >> 0 falsey

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

console.log(bubbleSort(ar));

