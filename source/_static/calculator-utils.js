function prettifyFloat(float) {
    return float.toFixed(2);
}

function writeText(id, content) {
    document.getElementById(id).innerText = content;
}

function getValue(id) {
    return document.getElementById(id).value;
}
