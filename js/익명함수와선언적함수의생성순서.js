// let num1;
// num1=10;
// num1=20;
// console.log(num1);


//1) 익명함수 두 개인  경우
// let func1;
// func1 = function () {
//     console.log("첫 번째 함수")
// }
// func1 = function () {
//     console.log("두 번째 함수")
// }

// func1();


//2) 선언적 함수 두 개의의 경우

// function func2() {
//     console.log("첫 번째 함수#");
// }

// function func2() {
//     console.log("두 번째 함수#");
// }

// func2();






// 3) 선언적 함수 , 익명 함수의 경우
// function func3() {
//     console.log("첫번째 함수##");
// }

// let func3=function () {
//     console.log("두번째 함수##");
// }
//Identifier 'func3' has already been declared
// func3();


// 4) 익명 함수 , 선언적 함수의 경우

//Identifier 'func4' has already been declared
// let func4=function () {
//     console.log("첫번째 함수###");
// }

// function func4() {
//     console.log("두번째 함수###");
// }

// func4();

console.log("=======================")

//익명함수(let으로 하지 않았을 경우), 익명함수는 선언적 함수를 무조건적으로 덮어쓴다. 선언적 함수가 먼저 생성되고, 이후에 익명함수가 만들어지므로
func4=function () {
    console.log("첫번째 함수###");
}
//선언적 함수
function func4() {
    console.log("두번째 함수###");
}

func4();