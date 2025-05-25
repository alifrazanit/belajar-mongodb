db.products.updateMany(
    {},
    {
    $set: {
        ratings: [90, 80, 70]
    }
})

db.products.updateMany({}, {
    $pull: {
        ratings: {
            $gte: 80
        }
    }
})

db.products.updateMany({}, {
    $push: {
        ratings: 100
    }
})

db.products.updateMany({}, {
    $pullAll: {
        ratings: [100, 0]
    }
})