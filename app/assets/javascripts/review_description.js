document.addEventListener("DOMContentLoaded", function() {
    var button = document.querySelector("#toggle-description-button");

    if (button) {
        button.addEventListener("click", toggleDescription);
    }
});

function toggleDescription() {
    var truncated = document.getElementById("review-description-truncated");
    var full = document.getElementById("review-description-full");

    if (truncated.style.display === "none") {
        truncated.style.display = "inline";
        full.style.display = "none";
        this.innerHTML = "Read More";
    } else {
        truncated.style.display = "none";
        full.style.display = "inline";
        this.innerHTML = "Read Less";
    }
}