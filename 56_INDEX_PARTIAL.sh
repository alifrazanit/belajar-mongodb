db.products.createIndex({
    price: 1
}, {
    partialFilterExpression: {
        stock: {
            $gt: 0
        }
    }
})

db.products.find({
    price: {
        $eq: 2500
    },
    stock: {
        $gt: 0
    }
}).explain()