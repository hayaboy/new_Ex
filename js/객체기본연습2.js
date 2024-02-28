let myCar={
    // "color":"black",
    // "speed": true   

    color:"black",
    speed: true   
}

//console.log(myCar);

for (let obj in myCar){
    console.log(`${obj}    ${myCar[obj]}`);
    //console.log(`${obj}    ${myCar.obj}`)
}