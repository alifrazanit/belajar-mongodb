# SELECT * FROM products where price % 5 = 0
db.products.find({
    price: {
        $mod: [5, 0]
    }
})

# SELECT * FROM products where price % 1000000 = 0
db.products.find({
    price: {
        $mod: [1000000, 0]
    }
})