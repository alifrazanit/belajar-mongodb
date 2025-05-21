# SELECT * FROM products where name like "%mie%"
db.products.find({
    name: {
        $regex: /mie/,
        $options: "i" 
    }
})

db.products.find({
    name: {
        $regex: /^Mie/
    }
})