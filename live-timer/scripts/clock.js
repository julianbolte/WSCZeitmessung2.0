var clockElem = document.getElementById("clock");
var startnummerElem = document.getElementById("startnummer");
var startTimes = [];
var totalTimes = [];
var updateClockInterval;
var showingTotalTime = false;

var addressesElement = document.getElementById("addresses");

var addressStart = addressesElement.dataset.addressStart;
var addressZiel = addressesElement.dataset.addressZiel;

var socketStart ;
var socketZiel;
if(connect()) {
    console.log("connected");
} else {
    console.log("failed to connect");
}

function connect() {
    socketStart = new WebSocket("ws://" + addressStart + ":1001");
    socketZiel = new WebSocket("ws://" + addressZiel + ":1002");
    return socketStart.readyState === WebSocket.OPEN && socketZiel.readyState === WebSocket.OPEN;
}

socketStart.onopen = function (event) {
    console.log("socketStart opened");
};

socketZiel.onopen = function (event) {
    console.log("socketZiel opened");
};

socketStart.onclose = function (event) {
    console.log("socketStart closed (" + event.code + ")");
};

socketZiel.onclose = function (event) {
    console.log("socketZiel closed (" + event.code + ")");
};

socketStart.onmessage = function (event) {
    console.log("message on socketStart: " + event.data);
    var str = event.data.match(/\d\/\d{12}/)
    if(str) {
        var startTimeArray = str[0].split("/");
        var startnummer = startTimeArray[0];
        var zeit = startTimeArray[1];
        console.log("startnummer: " + startnummer);
        console.log("zeit: " + zeit);
        addStartTime(startnummer, zeit);
    }
};

socketZiel.onmessage = function (event) {
    console.log("message on socketZiel: " + event.data);
    var str = event.data.match(/\d\/\d{12}/)
    if(str) {
        var zielTimeArray = str[0].split("/");
        var startnummer = zielTimeArray[0];
        var zeit = zielTimeArray[1];
        console.log("startnummer: " + startnummer);
        console.log("zeit: " + zeit);
        stop(startnummer, zeit);
    }
};








function startc(startnummer) {
    addStartTime(startnummer, getCurTime());
}

function stopc(startnummer) {
    stop(startnummer, getCurTime());
}



function addStartTime(startnummer, time) {
    startTimes.push({
        startnummer: startnummer,
        zeit: time
    });
    if(startTimes.length === 1 && !showingTotalTime) {
        start();
    }
}

function start() {
    startnummerElem.innerHTML = padLeft(startTimes[0].startnummer, 3, "0");
    updateClockInterval = setInterval(setTime, 30);
}

function stop(startnummer, time) {
    var index = startTimesIndexOf(startnummer);
    if(index !== null) {
        var timeObj;
        clearInterval(updateClockInterval);
        if(index === 0) {
            timeObj = startTimes.shift();
        } else {
            timeObj = startTimes.splice(index, 1)[0];
        }
        totalTimes.push({
            startnummer: startnummer,
            zeit: time - timeObj.zeit
        });
        console.log("totalTimes" + totalTimes);
        if(!showingTotalTime) 
            showTotals();
    } else {
        //ignore
    }
}

async function showTotals() {
    console.log("showTotals");
    showingTotalTime = true;
    while(totalTimes.length > 0) {
        var timeObj = totalTimes.shift();
        startnummerElem.innerHTML = padLeft(timeObj.startnummer, 3, "0");
        clockElem.innerHTML = formatTime(timeObj.zeit, 2);
        await sleep(3000);
        console.log("loop");
    }
    showingTotalTime = false;
    if(startTimes.length > 0) {
        start();
    } else {
        reset();
    }
}

// returns index of startnummer in startTimes or false if startTimes does not contain startnummer
function startTimesIndexOf(startnummer) {
    for (var i = 0; i < startTimes.length; i++) {
        var timeObj = startTimes[i];
        if (timeObj.startnummer === startnummer) {
            return i;
        }
    }
    return false;
}

function reset() {
    startnummerElem.innerHTML = "---";
    clockElem.innerHTML = "000.00";
}

// update time in html
function setTime() {
    var time = getCurTime() - startTimes[0].zeit;
    clockElem.innerHTML = formatTime(time, 1);
}

function formatTime(time, precision) {
    return padLeft((time / 100).toFixed(precision), precision + 4, "0");
}

function padLeft(text, length, char) {
    text = text + "";
    while (text.length < length) text = char + text;
    return text;
}

function getCurTime() {
    return Math.round(new Date().getTime() / 10);
}

function sleep(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}