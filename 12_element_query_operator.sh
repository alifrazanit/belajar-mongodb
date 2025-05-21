# $exist mencocokan document yang memiliki field tersebut
# $type mencocokan document yang memiliki type field tersebut


# SELECT * FROM products WHERE category is null
db.products.find({
    category: {
        $exists: false
    }
})

# SELECT * FROM products WHERE TYPE(category) = 'string'
db.products.find({
    category: {
        $type: "string"
    }
})

# SELECT * FROM products where type(price) in ('int', 'long')
db.products.find({
    price: {
        $type: ["int", "long"]
    }
})