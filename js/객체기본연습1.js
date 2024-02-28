let myCar={
    color:"black",
    speed: true   
}

// console.log(myCar);
// console.log(typeof(myCar));
// console.log(myCar.color);
// console.log(myCar["color"]);
// console.log(myCar.speed);

for (let key in  myCar){
    console.log(`key : ${key}, value :  ${myCar[key]}` );
}
console.log("=======")
// for (let key of  myCar){
//     console.log(key);
// }