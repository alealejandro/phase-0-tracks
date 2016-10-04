// Release 0

  // Function that takes an array of words/phrases & returns the longest word/phrase in the array
    // Input: Bunch of words
    // Steps: 
      // Initial
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
var array1 = ['a', 'abc', 'abcd', 'ab'];
var array2 = []

var find_largest = function(array) {
	for (i=0; i < array.length; i++) { // for each word in array
    array2.push(array[i].length);
  }
  return array2;
}

console.log(find_largest(array1));