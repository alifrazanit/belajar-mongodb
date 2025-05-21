db.products.insertOne({
    _id: 9,
    name: 'ups salah',
    wrong: 'salah lagi'
})

db.products.replaceOne({
    _id: 9
},{
    name: "adidas sepatu",
    price: new NumberLong("1100000"),
    category: "shoes",
    tags:[
        "addidas","shoes","running"
    ]
})