//익명 함수 (O X  O X)
let sunja1=function () {    
    console.log("hi");
}
let sunja2=function (gift) {    
    console.log(gift);
}
// sunja1();
// sunja2("오징어");
let sunja3=function () {    
    return "한치";
}
let gift=sunja3();
// console.log(gift);

let sunja4=function (gift) {    
    console.log(gift);
    return "한치";
}
let gift2=sunja4("노가리");
console.log(gift2);


