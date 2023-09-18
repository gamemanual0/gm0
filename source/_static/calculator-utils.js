function prettifyFloat(float) {
    return float.toFixed(2);
}

function writeText(id, content) {
    if (isNaN(content)) {
      content = "Invalid!";
    }

    document.getElementById(id).innerText = content;
}

function getValue(id) {
    const value = parseFloat(document.getElementById(id).value);

    if (isNaN(value)) {
        throw new Error("Value must be a number!");
    }

    if (value <= 0) {
        throw new Error("Value must be positive!");
    }

    if (value >= 1e6) {
        throw new Error("Value must be reasonably small! (Less than 1e6.)");
    }

    return value;
}
