//1

// (1)  표현식 
// (2)  문장
// (3)  예약어(키워드)
// (4)  식별자(idetifier)
// (5) boolean(불, bool)
// (6) true
// (7) false
// (8) false
// (9) 변수
// (10) 상수
//(11) const
//(12) let
//(13) typeof
//(14) NaN

//2

// (1) X
// 세미콜론 또는 줄바꿈으로 문장을 종결할 수 있습니다.
// (2) O
// (3) O
// (4) X
// 포함할 수 없습니다.
// (5) O
// (6) X
// 영향을 주지 않습니다.
// (7) X 
// // 기호를 사용합니다.
// (8) O
// (9) X 
// (10)  O
// (11)  X 

//3 

// if(true){
//     console.log("hi");
// }

// if(false){
//     console.log("hi");
// }


// if(false){
//     console.log("hi");
// }else{
//     console.log("not hi");
// }


// if(false){
//     console.log("A");
// }else if(false){
//     console.log("B");
// }else{
//     console.log("C");
// }
// let str='';
// for (let i = 0; i < 3; i++) {
//      str+=i + ' ';
// }

// console.log(str);


//1부터 10까지 누적
// let total=0;
// for(let i=0;i<=10;i++){
//     total +=i;
// }
// console.log(total);


//구구단
// for(let i=0;i<3;i++){

//     let str='';
//     for(let j=0;j<3;j++){
//         // console.log("hi");
//         str += 'hi ';
//     }
//     console.log(str);
// }


for(let i=2;i<=9;i++){    
    let str='';
    for(let j=1;j<=9;j++){        
       // console.log(i*j);
        // str = str + (i*j) +' ';
        //str = str + i + '*' + j + '='  + (i*j) +' ';
        str = str + `${i}*${j}=${i*j} `
    }
    console.log(str);
}