# UPDATE FUNCTION
# updateOne() >>> Mengupdate 1 dokumen
# updateMany() >>> Mengupdate banyak dokumen
# replaceOne() >>> Menimpa dokumen lama dengan dokumen baru

# update one syntax
db.customer.updateOne(
    {}, # filter
    {}, # update
    {} # options
)

db.customer.updateMany(
    {}, # filter
    {}, # update
    {} # options
)

db.customer.replaceOne(
    {}, # filter
    {}, # update
    {} # options
)

# UPDATE PRODUCTS SET CATEGORY = "FOOD" WHERE _ID = 1
db.products.updateOne({
    _id: 1
},{
    $set: {
        category: "food"
    }
})

db.products.updateOne({
    _id: 2
},{
    $set: {
        category: "food"
    }
})

# UPDATE products set tags = ["food"] WHERE category = "food" and tags is null
db.products.updateMany({
    $and:[{
            category: {
                $eq: "food"
            }
        },
        {
            tags: {
                $exists: false
            }
        }
    ]
},{
    $set: {
        tags: ["food"]
    }
})


