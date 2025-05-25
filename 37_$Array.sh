# MENGUPDATE ARRAY PERTAMA
db.products.updateMany({}, {
    $set:{
        ratings: [90, 80, 70]
    }
})

db.products.updateMany({
    ratings: 90    
}, {
    $set: {
        'ratings.$': 100
    }
})

db.products.find();