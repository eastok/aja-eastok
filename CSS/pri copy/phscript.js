//모든 이미지박스
const allImages = document.querySelectorAll(".images .img");
const lightbox = document.querySelector(".lightbox");
const closeImgBtn = lightbox.querySelector(".close-icon");

//모든 이미지박스ㅔ 클릭시 그 이미지의 주소를 라이트박스에 전달!
allImages.forEach(function (img) {
  img.addEventListener("click", function () {
    showLightbox(img.querySelector("img").src);
  });
});

function showLightbox(imgPath) {
  lightbox.querySelector("img").src = imgPath;
  lightbox.classList.add("show");
  document.body.style.overflow = "hidden";
}

closeImgBtn.addEventListener("click", function () {
  // 종료 버튼 클릭시 라이트 박스 종료
  lightbox.classList.remove("show");
  document.body.style.overflow = "auto";
});
