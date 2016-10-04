var colors = ['red', 'blue', 'green', 'silver'];
var names = ['a', 'b', 'c', 'd'];

colors.push('pink');
names.push('e');

console.log(colors);
console.log(names);
console.log();

// Use 2 arrays to create an object.
  // Keys should be names, values should be colors
  // Should work for any number of elements, as long as 2 arrays are of same length

  // create a horses object, where each key is a name, value is a color
  // Loop through names array
    // For each name in names
      // Add name to horses object
      // Assign name with value color in corresponding index of colors array
      // horses['name'] = 'color';

var horses = {};

if (names.length === colors.length) {
	for (i=0; i < names.length; i++) {
	  horses[names[i]] = colors[i];
	}
}
console.log(horses);
console.log();

// Constructor function for a car with a few different properties of various data types & at least one function

function Car(make, model, year, top_speed) {
	this.make = make;
	this.model = model;
	this.year = year;
	this.top_speed = top_speed;

	this.honk = function() { console.log("Honk Honk!"); };

	this.speed_up = function() { 
		console.log("Driving faster to " + this.top_speed + "MPH!")
	};

	console.log("Car initialization complete");
}

var beemer = new Car('BMW', '328i', 2016, 155);
console.log(beemer.model);
beemer.honk();
beemer.speed_up();
console.log("----");

var benz = new Car('Mercedes', 'C63 AMG', 2016, 155);
console.log(benz.model);
benz.speed_up();

