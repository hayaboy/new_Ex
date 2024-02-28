

// setTimeout(function () {
//     console.log("hi2");
// }, 2000);

// let callback=function () {
//     console.log("hi3");
// }

// setTimeout(callback, 3000);


 // function () {
 //     console.log("hi111");
 // }  부분을 화살표 함수로 변형  () => { console.log("hi4");}


//setTimeout(() => { console.log("hi4");}, 4000);
let arrow = () => { console.log("hi5");}
setTimeout(arrow, 5000);