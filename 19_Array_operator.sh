# $all, Mencocokan array yang mengandung elemen2 tertentu
# $elemMatch, Mengambil dockumen jika tiap element di array memenuhi kondisi tertentu
# $size, Mengambil dockumen jika ukuran array sesuai 

db.products.insertMany([
    {
        _id: 6,
        name: "Logitech Wirleless Mouse",
        price: new NumberLong("175000"),
        category: "laptop",
        tags: ["logitech","mouse","accessories"]
    },
     {
        _id: 7,
        name: "Cooler Pad Gaming",
        price: new NumberLong("275000"),
        category: "laptop",
        tags: ["cooler","laptop","accessories", "fan"]
    },
     {
        _id: 8,
        name: "Samsung Curved Monitor",
        price: new NumberLong("1750000"),
        category: "computer",
        tags: ["samsung","monitor","computer"]
    },
]);

# SELECT * FROM products where (tags = 'samsung' and tags = 'monitor')
db.products.find({
    tags:{
        $all: ["samsung", "monitor"]
    }
})

# Select * from products where tags in ("samsung", "logitech")
db.products.find({
    tags: {
        $elemMatch: {
            $in: ["samsung", "logitech"]
        }
    }
})

# SELECT * FROM products where count(tags) = 3
db.products.find({
    tags: {
        $size: 3
    }
})