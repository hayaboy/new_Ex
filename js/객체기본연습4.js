let obj={
    product:"바나나",
    price:1200,
    print:function () {
        console.log(`${this.product}는 ${this.price}`);
    }
}

// for (let key in obj){
//     console.log(`${key}   :  ${obj[key]}`);
// }

//console.log(obj.product);
obj.print()