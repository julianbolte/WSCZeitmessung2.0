var addressesElement = document.getElementById("addresses");

var addressStart = addressesElement.dataset.addressStart;
var addressZiel = addressesElement.dataset.addressZiel;
console.log("start: " + addressStart);
console.log("ziel: " + addressZiel);

var socketStart = new WebSocket("ws://" + addressStart + ":8080");
var socketZiel = new WebSocket("ws://" + addressZiel + ":8080");

socketStart.onopen = function (event) {
    console.log("socketStart opened");
};

socketZiel.onopen = function (event) {
    console.log("socketZiel opened");
};

socketStart.onclose = function (event) {
    console.log("socketStart closed");
};

socketZiel.onclose = function (event) {
    console.log("socketZiel closed");
};

socketStart.onmessage = function (event) {
    console.log(event.data);
};

socketZiel.onmessage = function (event) {
    console.log(event.data);
};

