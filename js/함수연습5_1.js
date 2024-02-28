//이름 숨김, 익명 함수 -> 함수를 변수에 저장할 수 있다는 것 
let a = function () {    
    console.log("hihi2222####");  
}
// a();

// function fun2(name){
// console.log("이름",name);
// }

// fun2("홍길동")

// 콜백 함수 : 함수의 매개 변수로 전달되는 함수

function fun3(func){
    func();
}

// 익명 함수(a)를 매개변수로 전달함 : a는 익명함수이자 콜백 함수
fun3(a);