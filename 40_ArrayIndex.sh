db.products.updateMany({}, {
    $set:{
        'ratings.0': 50,
        'ratings.1': 10
    }
})
db.products.find();