const color1 = document.querySelector(".color1");
const color2 = document.querySelector(".color2");
const body = document.querySelector("body");

// function handleClick() {
//   console.log("클릭했네!");
// }

//바디에 리니어그라디언트 배경색을 하려면 색깔이 2개 필요

// var css = document.querySelector("h3");
// var color1 = document.querySelector(".color1");
// var color2 = document.querySelector(".color2");
// var body = document.getElementById("gradient");

function handleChange() {
  console.log("색을 바꿨다.");
  let c1 = color1.value; //유저가 선택한 색
  let c2 = color2.value;
  body.style.background = `linear-gradient(to right, ${c1}, ${c2})`;
}
