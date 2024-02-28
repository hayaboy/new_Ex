// let products=[
//     {prod:'바나나',price:100, print:function () {
//         console.log(`${this.prod}는 ${this.price}`);
//     }},
//     {prod:'사과',price:200,print:function () {
//         console.log(`${this.prod}는 ${this.price}`);
//     }},
//     {prod:'배',price:300,print:function () {
//         console.log(`${this.prod}는 ${this.price}`);
//     }},
// ]
let products=[
    {prod:'바나나',price:100},
    {prod:'사과',price:200},
    {prod:'배',price:300},
]

function printProduct(products) {
    console.log(`${products.prod}는 ${products.price}`);
}

for (let product of products){
    printProduct(product);
}