// Release 0

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
	          // etc.

      // QuickSort
        // Find a pivot, which divides the array into 2 halves, where left is smaller than pivot, right is larger
          // 1. Find pivot that divides the array into 2 halves
          // 2. Quick sort the left half
          // 3. Quick sort the right half

    // Output: Longest word

// Analogy using numbers so more basic:
  // For each item in array
    // Starting with first item, 
    // Compare item at index with item at next index
      // If item at next index is greater
        // Don't flip
      // If item at next index is smaller
        // Flip
    // After comparison,
      // Rechoose index as next index
      // Compare again
      // Loop until at final index

var ar = [1, 3, 2, 4, 8, 0];

var bubbleSort = function(array) {
  for (i = 0; i < array.length; i++) {
  	// for each item in array,
  	// compare to next item
  	if (array[i] < array[i+1]) {
  		continue;
  		// go to next iteration, next index
  	}
  	else if (array[i] > array[i+1]) {
  		temp = array[i]; // store bigger value
  		array[i] = array[i+1]; // make smaller index have smaller value
  		array[i+1] = temp; // make bigger index have bigger value
  	}
  }
  return array;
}

console.log(bubbleSort(ar));


/*
var array1 = ['a', 'abc', 'abcd', 'ab'];
var array2 = []

var find_largest = function(array) {
	for (i=0; i < array.length; i++) { // for each word in array
    array2.push(array[i].length);  // store word length in new array
  }
  for (i=0; i < array2.length; i++) { 
  // for each length in new array
  // Compare with next index
    // If next index < current index
      // Switch positions
      // Next iteration
    // If next index > current index
      // Maintain positions
      // Skip to next iteration so that i = current i + 1
    if (array2[i] > array2[i+1])


  }
  return array2;
};

console.log(find_largest(array1));
*/
