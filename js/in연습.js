// in  ~ 안에  있냐, 없냐?  true, false

// in 멤버쉽(멤버(여러명, 최소 2명이상) 포함 여부) 연산자

//2명이상이란 개념은 반복할수 있다(iterable)라고 부름, collection

//배열이란 개념은 동일한 타입, 고정된 사이즈

//console.log(7 in [7,"hi",true]);

//console.log("7" in [7,"hi",true]);

// for i in (포아이인)
// for i in 이터러블 객체


//console.log ( 1 in [1,2,3]);


// for(let i=0;i<3;i++){
//     console.log(i);
// }
//i는 index
let arrs=[7,4,3];
for (let i in arrs){
    console.log(arrs[i]);
}
console.log("-------------")
for(let i=0;i<arrs.length;i++){
    console.log(arrs[i]);
}
console.log("==============")
for (let arr of arrs){
    console.log(arr);
}