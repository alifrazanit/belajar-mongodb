# $eq       |       =
# $gt       |       >
# $gte      |       >=
# $lt       |       <
# $lte      |       <=
# $in       |       in()
# $nin      |       NOT IN
# $ne       |       !=

# Contoh penggunaan
db.customers.find({
    name:{
        $eq: "alif"
    }
})

db.products.insertMany([
    {
        _id: 3,
        name:"Pop Mie",
        price: new NumberLong("2500"),
        category: "food"
    },
    {
        _id: 4,
        name:"Samsung Galaxy S9+",
        price: new NumberLong("2000000"),
        category: "handphone"
    },
    {
        _id: 5,
        name:"Asus ROG",
        price: new NumberLong("11000000"),
        category: "laptop"
    },
])

# SELECT * FROM customers where _id = "alif"
db.customers.find({
    _id:{
        $eq: "alif"
    }
})

db.products.find({
    price:{
        $gt: 5000
    }
})

# SELECT * FROM products where category in ('handphone', 'laptop') 
# and price >= 1000000
db.products.find({
    category:{
        $in: ["handphone", "laptop"]
    },
    price:{
        $gt: 1000000
    }
})