// (1) 배열
// (2) 요소
// (3) undefined

let arr=[7,3,1];
// console.log(arr[3]);

// (4) 무한 반복문 또는 무한 루프 
// (5) break
// (6) continue
// (7) 스코프(또는 블록도 답으로 허용)
// (8) var
// (9) 섀도잉(shadowing)

// let num1;
// if(true){
//     let num1;
//     //num1=4;
//     console.log();

// }

//1 O
//2 x
//3 X
//4 X
//5 X
//6 O
//7 O, X
// while(true){
//  console.log("hi");
// }



//8 X
let arrs=[5,7,9];
for (let i in arrs){
    console.log(arrs[i]);
}

console.log("-------------")
//9 X


for (let arr of arrs){
    console.log(arr);
}

//10  X

