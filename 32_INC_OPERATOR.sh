# Semua stok product ditambah 10
db.products.updateMany({}, {
    $inc: {
        stock: 5
    }
})