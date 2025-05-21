# update products set catgory = 'food' where _id = 1
db.products.updateOne({
    _id: 1
}, { 
    $set: {
        category: "food"
    }
})

# update products set catgory = 'food' where _id = 2
db.products.updateOne({
    _id: 2
}, { 
    $set: {
        category: "food"
    }
})