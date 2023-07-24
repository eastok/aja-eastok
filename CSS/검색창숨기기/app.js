const search = document.querySelector(".search");
const btn = document.querySelector(".btn");
const input = document.querySelector(".input");

btn.addEventListener("click", function () {
  search.classList.toggle("active"); //액티브 클래스를 있음 제거 없음 추가
  input.focus(); //입력창 포커스 커서
});
