const allImages = document.querySelectorAll(".images .?");
const lightbox = document.querySelector(".?");
const closeImgBtn = lightbox.querySelector(".?");
allImages.forEach(img => {
    // 이미지 클릭 이벤트시 그 이미지의 주소(src)를 빈 라이트 박스에 전달
    img.addEventListener("click", () => showLightbox(img.querySelector("img").?));
});
// 이미지 주소를 받아서 라이트 박스에 표시한다. (평상시엔 안보임 show 클래스 추가하기)
const showLightbox = (img) => {
    
    lightbox.querySelector("img").src = img;
    lightbox.classList.add("?");
    document.body.style.overflow = "hidden";
}
closeImgBtn.addEventListener("click", () => {
    // 종료 버튼 클릭시 라이트 박스 종료
    lightbox.classList.remove("?");
    document.body.style.overflow = "auto";
});