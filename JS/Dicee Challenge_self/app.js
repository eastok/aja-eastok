//alert("1");
const img1 = document.querySelector(".img1");
const img2 = document.querySelector(".img2");

let result6 = Math.floor(Math.random() * 6) + 1;

if (result6 == 1) {
  img1.setAttribute("src", "images/dice1.png");
} else if (result6 == 2) {
  img1.setAttribute("src", "images/dice2.png");
} else if (result6 == 3) {
  img1.setAttribute("src", "images/dice3.png");
} else if (result6 == 4) {
  img1.setAttribute("src", "images/dice4.png");
} else if (result6 == 5) {
  img1.setAttribute("src", "images/dice5.png");
} else {
  img1.setAttribute("src", "images/dice6.png");
}

let result6nd = Math.floor(Math.random() * 6) + 1;

// if (result6nd == 1) {
//   img2.setAttribute("src", "images/dice1.png");
// } else if (result6nd == 2) {
//   img2.setAttribute("src", "images/dice2.png");
// } else if (result6nd == 3) {
//   img2.setAttribute("src", "images/dice3.png");
// } else if (result6nd == 4) {
//   img2.setAttribute("src", "images/dice4.png");
// } else if (result6nd == 5) {
//   img2.setAttribute("src", "images/dice5.png");
// } else {
//   img2.setAttribute("src", "images/dice6.png");
//  }

// 반복문으로 하려면
for (let i = 1; i < 7; i++) {
  if (result6nd == i) {
    img2.setAttribute("src", "images/dice" + result6nd + ".png");
  }
}

document.write("나온 숫자는 : " + result6 + "<br>");
document.write("나온 숫자는 : " + result6nd);

//img2.setAttribute("src", "images/dice" + randomNuber2 + ".png");
