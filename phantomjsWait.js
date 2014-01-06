var page = require('webpage').create();
var	system = require('system');
var	address = system.args[1];

page.open(address, function (status) {
	if (status !== 'success') {
		console.log('Unable to access network');
	} else {
		waitFor(function () {
			var msg = page.evaluate(function () {
				var obj = document.getElementById('loadingpage');
				if (obj) {return obj.innerHTML;}
			});
			return msg === 'done';
		}, function(){
			var html = page.evaluate(function () {
				// return document.getElementsByTagName('body')[0].outerHTML;
				return document.documentElement.outerHTML
			});
			// page.render('temp.png');
			console.log(html);
			phantom.exit();
		});
	}
});

function waitFor(testFx, onReady, timeOutMillis) {
	var maxtimeOutMillis = timeOutMillis ? timeOutMillis : 10000, //< Default Max Timout is 3s
		start = new Date().getTime(),
		condition = false,
		interval = setInterval(function() {
			if ( (new Date().getTime() - start < maxtimeOutMillis) && !condition ) {
				// If not time-out yet and condition not yet fulfilled
				condition = (typeof(testFx) === "string" ? eval(testFx) : testFx()); //< defensive code
			} else {
				if(!condition) {
					// If condition still not fulfilled (timeout but condition is 'false')
					console.log("'waitFor()' timeout");
					phantom.exit(1);
				} else {
					// Condition fulfilled (timeout and/or condition is 'true')
					console.log("'waitFor()' finished in " + (new Date().getTime() - start) + "ms.");
					typeof(onReady) === "string" ? eval(onReady) : onReady(); //< Do what it's supposed to do once the condition is fulfilled
					clearInterval(interval); //< Stop this interval
				}
			}
		}, 250); //< repeat check every 250ms
};

