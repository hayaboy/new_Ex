// 1. 
// (1)익명 함수
// (2)리터럴
// (3)콜백 함수
// (4)매개변수
// (5) 리턴 값
// (6) return 
// (7) this

// (1) O
// (2) O
// (3) X
// (4) X
// (5) X
// (6) X
// (7) X
// (8) O
// (9) X

// 3. ③				
// 4. ④

// console.log(parseInt("10") + 1);
// console.log(parseFloat("10.1") + 1);
// console.log(Number("10") + 1);
// console.log(Number("10.3") + 1);

//5. ①

// function test(a,b,c) {
//     console.log(a);
//     console.log(a*b);
//     console.log(a*b*c);    
// }

// test(10,100);


// 7. ① 
// 8. ② 
// 9. ② 
// 10. ②

// function 함수(매개변수) {
//     if(매개변수){
//         매개변수=10
//     }
//     console.log(매개변수);
    
// }

// 함수();


// function power(...args) {
//     if(args.length===1){
//         let result1=args[0]*args[0];
//         return result1;
//     }else if(args.length===2){       
//         let result2=Math.pow(args[0],  args[1]);
//         return result2;
//     }

// }

// console.log(power(2));
// console.log(power(2,3));


// function power(a, b) {
//     if ( b == undefined) {
//         console.log(Math.pow(a, 2));
//     } else {
//         console.log(Math.pow(a, b));
//     }
// }
// power(3);
// power(3, 10);



// function power(a, b) {
//     if(!b) {
//         return a * a;
//     } else {
//         let output = 1;
//         for (let i = 0; i < b; i++) {
//             output = output * a;
//         }
//         return output;
//     }
// }
// console.log(power(5));
// console.log(power(2,3));



// function multiply(...args) {
//     let mul=1;
//     for(let  arg of args){
//         mul=mul*arg;
//     }
//     return mul;
// }

// console.log(multiply(1,2,3,4, 5));

function multiply(...args) {
    let result=1;
    for(let i=0;i<args.length;i++){     
        //let result=1;
       // console.log(args[i]);
        result = result * args[i];
       
    }
    return result;
}
console.log(multiply(1,2,3,4,5));



