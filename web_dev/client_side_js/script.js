console.log("Script running");

var h1s = document.getElementsByTagName("h1");
console.log(h1s);

var mainHeader = h1s[0];
console.log(mainHeader);

////// Release 1 //////

/* My first approach
function timerFade(element) {
	for (i = 0; i < 1; i += 0.1) {
		setTimeout(setOpacity(element, i), 1000);
	};
};
*/

function setOpacity(element, index) {
	element.style.opacity = index;
	console.log(index);
};

function fadeIn(element) {
	var go = function(index) { 
	// how to move this function outside & call from fadeIn?
		setTimeout(function() { 
		// why function() ?
			setOpacity(element, index);
		}
		, index * 3000); 
		// x ms for entire effect
	};

	for (var i = 0; i < 1; i += 0.01) {
		go(i);
	};
};

fadeIn(mainHeader);

/* 
	EXTERNAL & INNER COUNTERS needed ?
	opacity = 0
	set .style.opacity == opacity
	based on setTimeout milliseconds,
	run fadeIn
	until .style.opacity == 1;

	https://stackoverflow.com/questions/23259986/how-to-create-fadein-effect-in-javascript-using-for-loop-and-anonymous-function/23284208

	https://stackoverflow.com/questions/1776687/settimeout-inside-for-loop

	https://duckduckgo.com/?q=settimeout+javascript+for+loop+fade+in&atb=v33-2__&ia=qa

	http://www.w3schools.com/js/js_timing.asp
*/

////// Release 2 //////

// http://www.w3schools.com/jsref/event_onscroll.asp

function logToConsole() {
	console.log("Running release 2");
};

document.addEventListener("scroll", logToConsole);
