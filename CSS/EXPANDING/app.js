const panels = document.querySelectorAll(".panel");

panels.forEach(function (panel) {
  panel.addEventListener("click", function () {
    removeActiveClasses();
    panel.classList.add("active");
  });
});

function removeActiveClasses() {
  // panels[0].classList.remove("active");
  // panels[1].classList.remove("active");
  // panels[2].classList.remove("active");
  // panels[3].classList.remove("active");
  // panels[4].classList.remove("active");
  // 이렇게 줄일 수 있음
  panels.forEach(function (p) {
    p.classList.remove("active");
  });
}
