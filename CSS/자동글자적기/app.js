const textEl = document.querySelector("#text");
const speedEl = document.querySelector("#speed");

const text = "안녕❤ 해끔의 포트폴리오🧡 사이트! 환영합니다~❣";

let idx = 1; //문자열 인덱스번호 1 초기값
let speed = 300 / speedEl.value; //300 0.3초

writeText();

function writeText() {
  textEl.textContent = text.slice(0, idx); //첫번째문자부터 idx까지 잘라내기
  idx++;
  if (idx > text.length) {
    idx = 1;
  }

  setTimeout(writeText, speed); //속도 speed 후에 다시 실행한다.
}

//문자열 속도를 인풋창을 읽어서 다시 설정한다.
speedEl.addEventListener("input", (e) => (speed = 300 / e.target.value));
