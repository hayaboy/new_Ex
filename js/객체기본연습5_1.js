class Product{
    
    //필
    prod;
    price;

    constructor(prod,price){
        this.prod=prod;
        this.price=price;
    }

    //메
    printProduct() {
        console.log(`${this.prod}는 ${this.price}`);
    }
}

// console.log(new Product());
// console.log(typeof(new Product()));

// let product=new Product();
// console.log(product);

// let product2=new Product("바나나3", 1003);
//console.log(product2);
// console.log(product2.prod);
// console.log(product2.price);
// let products=[new Product("바나나", 100),new Product("사과", 200)]
let obj1=new Product("바나나2", 700);
let obj2=new Product("사과2", 800);
let products=[obj1, obj2];

for (let obj of products){
    obj.printProduct();
}