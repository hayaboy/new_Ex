class Product{
    constructor(prod,price){
        this.prod=prod;
        this.price=price;
    }

    print(){
        console.log(`${this.prod}는 ${this.price}`);
    }

}

let prods=[
    new Product('바나나', 100),
    new Product('사과', 200),
    new Product('포도', 300),
];

for(let prod of prods){
    prod.print();
}

