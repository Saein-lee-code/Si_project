function openNav() {
  left_side_nav.style.width = "250px";
  menu_bar.style.opacity = 0;
}

function closeNav() {
  left_side_nav.style.width = "0";
  menu_bar.style.opacity = 1;
}

var video = document.getElementById("myVideo");
var btn = document.getElementById("myBtn");

function myFunction() {
  if (video.paused) {
    video.play();
    btn.innerHTML = "Pause";
  } else {
    video.pause();
    btn.innerHTML = "Play";
  }
}
