// Function takes string as parameter & reverses string
  // Takes string as input
  // Creates a new string
  // Goes through each letter in string input
    // Start counter at end of string, then work backwards, adding each letter to new string
  // returns new string
  // print return value of function

var str = "Loop";

function reverse(string) {
	var revStr = "";
	for (var i = string.length - 1; i >= 0; i--) {
    revStr += string[i];
	}
	return revStr;
}

console.log(reverse(str));