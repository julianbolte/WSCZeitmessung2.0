var fontSizeInput = document.getElementsByName("font-size")[0];
if (getCookie("font-size") !== "") {
    fontSizeInput.value = getCookie("font-size");
    updateFontSize();
} else {
    fontSizeInput.value = getFontSize();
    setCookie("font-size", fontSizeInput.value, 600);
}
fontSizeInput.addEventListener("input", updateFontSize);

function updateFontSize() {
    var fontSize = fontSizeInput.value;
    clockElem.style.fontSize = fontSize + "px";
    startnummerElem.style.fontSize = (fontSize * 0.4) + "px";
    setCookie("font-size", fontSize, 600);
}

function getFontSize() {
    return parseFloat(window.getComputedStyle(clockElem, null).getPropertyValue("font-size"));
}

function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    var expires = "expires=" + d.toUTCString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}

function getCookie(cname) {
    var name = cname + "=";
    var decodedCookie = decodeURIComponent(document.cookie);
    var ca = decodedCookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) === 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}
