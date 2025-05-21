# Element Match

# SELECT _id, name, tags[first] from prducts
db.products.find({}, {
    name: 1,
    tags: {
        $elemMatch: {
            $in: ["samsung", "logitech"]
        }
    }
})