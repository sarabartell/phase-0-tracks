console.log("The script is running!");

function hideImage(event) {

  if (event.target.previousElementSibling.style.visibility === "hidden") {
    event.target.previousElementSibling.style.visibility = "visible";
  } else {
    event.target.previousElementSibling.style.visibility = "hidden";
  }
}

var button = document.getElementById("myBtn");
button.addEventListener("click", hideImage);