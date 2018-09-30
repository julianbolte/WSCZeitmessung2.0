var regex = "(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)";

function validateForm() {
    var addressStarte = document.form.address_start.value;
    var addressFinish = document.form.address_ziel.value;
    if(!addressStarte.match(regex)) return false;
    if(!addressFinish.match(regex)) return false;
    return true;
}