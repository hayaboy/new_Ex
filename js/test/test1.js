// function power(a, b){
//     if(typeof(a) !=='undefined' && typeof(b) ==='undefined'){
//              return a*a;
//          }
//     // if(typeof(a)!=='undefined' && typeof(b) ==='undefined'){
//     //     return a*a;
//     // }
//     // if(a!=='undefined' && b!=='undefined'){
//     //     let result1=1;
//     //     for(let i=0;i<b;i++){
//     //         result1 *= a;
//     //     }
//     //     return result1;
//     // }
//     // if(a==='undefined' || b==='undefined'){
//     //     return;
//     // }
// }
// console.log(power(2));



function multiply(arr=[]) {
    console.log(arr);
    console.log(arr.length);
    let tot=1;
    for(let i=0;i<arr.length;i++){
         tot *= arr[i]
     }
     return tot;
}
let result=multiply(arr=[1,2,3,4,5]);
// multiply()
console.log(result);