db.products.updateMany({
    $and: [
        {
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
        tags: ['food']
    }
})