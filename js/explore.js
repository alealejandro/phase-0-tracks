// Function takes string as parameter & reverses string
  // Takes string as input
  // Creates a new string
  // Goes through each letter in string input
    // Start counter at end of string, then work backwards, adding each letter to new string
  // returns new string
  // print return value of function

function reverse(string) {
	var result = "";
	for (var i = string.length - 1; i >= 0; i--) {
    result += string[i];
	}
	return result;
}
	
var str = "JavaScript";
var revStr = reverse(str);

if (1 === 1) {
	console.log(revStr);
}