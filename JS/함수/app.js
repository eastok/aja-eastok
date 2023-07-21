//함수 function

// function showMessage() {
//   alert("안녕!");
// }

// let user = "홍길동";
// function showMessage() {
//   let message = "안녕!";
//   alert(user + "님 " + message);
// }

//함수 호출(실행)
//showMessage();

//지역변수 전역변수
// let b = "b";
// var d = "d";
// {
//   let a = "a";
//   var c = "c";
//   console.log(a);
//   console.log(b);
//   console.log(c);
//   console.log(d);
// }
// console.log(b);
// console.log(c);
// console.log(d);

//함수의 인수
// function showMessage(who, text) {
//   who = "💕" + who + "💕";
//   alert(who + ": " + text);
// }

//함수의 리턴(반환값)
function 더하기(a, b) {
  return a + b;
}
function 곱하기(a, b) {
  return a * b;
}
console.log(곱하기(10, 10));

let result = 곱하기(7, 7);
