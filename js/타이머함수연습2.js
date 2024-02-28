let num1=setTimeout(function () {
    console.log("hi");
}, 4000)

console.log("찍은 부분 : ", num1);

console.log(num1['_idleTimeout'])
console.log(num1._idleTimeout)

//console.log("찍은 부분의 타입 : ", typeof(num1));