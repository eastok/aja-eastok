const btn1 = document.querySelector("button");
const btns = document.querySelectorAll("button");

for (let i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function (e) {
    //내가 클릭한 대상
    //    console.log(e.target);
    //내가 클릭한 드럼의 소리를 냄
    //    e.target.style.color = "white";
    // var audio = new Audio("sounds/tom-1.mp3");
    // audio.play();
    //내가 클릭한 드럼의 소리를 냄!
    console.log(e.target.textContent);
    const key = e.target.textContent;
    drumplayer(key);
  });
}
document.addEventListener("keydown", function (e) {
  console.log(e.key);
  const key = e.key;
  drumplayer(key);
});
function drumplayer(key) {
  if (key == "w") {
    var audio = new Audio("sounds/tom-1.mp3");
    audio.play();
  } else if (key == "a") {
    var audio = new Audio("sounds/tom-4.mp3");
    audio.play();
  } else if (key == "s") {
    var audio = new Audio("sounds/tom-3.mp3");
    audio.play();
  } else if (key == "d") {
    var audio = new Audio("sounds/tom-2.mp3");
    audio.play();
  } else if (key == "j") {
    var audio = new Audio("sounds/crash.mp3");
    audio.play();
  } else if (key == "k") {
    var audio = new Audio("sounds/kick.mp3");
    audio.play();
  } else if (key == "l") {
    var audio = new Audio("sounds/snare.mp3");
    audio.play();
  }
}
