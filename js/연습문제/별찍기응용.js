let str="";
for (let i = 1; i < 8; i++) {

    for (let j = 7; j >= i; j--) {
       str += " ";
    }

    for (let j = 1; j <= 2*i-1; j++) {
        str += "*";
    }
    str += "\n"  ;

}

console.log(str);