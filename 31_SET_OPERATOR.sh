# UPDATE products set stock = 0
db.products.updateMany({}, {
    $set: {
        stock: 0
    }
})