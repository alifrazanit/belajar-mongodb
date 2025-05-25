# input array lebih dari satu
db.products.updateMany({}, {
    $push: {
        ratings: {
            $each: [100, 200, 300]
        }
    }
})

db.products.updateMany({} ,{
    $addToSet: {
        tags: {
            $each: ['tranding', 'popular']
        }
    }
})