function validate() {
    var firstName = document.forms["validation"]["title"].value;
    if (firstName == "") {
        alert("Title is required");
        return false;
    } else if (firstName.length < 2 || firstName > 100) {
        alert("Title should have 2 to 100 charecters");
        return false;
    } else {
        document.getElementById("movie-name").innerHTML = "";
    }
    var price = document.forms["validation"]["boxOffice"].value;
    if (price == "") {
        alert("Box Office is required");
        return false;
    } else if (isNaN(price)) {
        alert("Box Office has to be a number");
        return false;
    } else {
        document.getElementById("movie-price").innerHTML = "";
    }
    var launchDate=document.forms["validation"]["dateOfLaunch"].value;
    if (launchDate == "") {
        alert("Date of Launch is required");
        return false;
    } else {
        document.getElementById("movie-date").innerHTML = "";
    }
    var genre = document.forms["validation"]["genre"].value;
    if (genre == "") {
        alert("Select one genre");
        return false;
    } else {
        document.getElementById("movie-genre").innerHTML = "";
    }
}