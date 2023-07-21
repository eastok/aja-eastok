//alert("1");
const img1 = document.querySelector(".img1");
const img2 = document.querySelector(".img2");
const h1 = document.querySelector("h1");

let randomNuber1 = Math.floor(Math.random() * 6 + 1);
let randomNuber2 = Math.floor(Math.random() * 6 + 1);

img1.setAttribute("src", "images/dice" + randomNuber1 + ".png");
img2.setAttribute("src", "images/dice" + randomNuber2 + ".png");

if (randomNuber1 > randomNuber2) {
  h1.innerText = "🙌player 1 wins🙌";
} else if (randomNuber1 < randomNuber2) {
  h1.innerText = "🙌player 2 wins🙌";
} else {
  h1.innerText = "😜draw😜";
}
