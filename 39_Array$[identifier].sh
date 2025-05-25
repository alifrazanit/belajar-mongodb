# UPDATE SESUAI KONDISI FILTERS
db.products.updateMany({}, {
    $set: {
        ratings: [90, 80, 70]
    }
});

db.products.updateMany({}, {
    $set: {
        'ratings.$[element]': 100
    }
}, {
    arrayFilters: [
        {
            element: {
                $gte: 80
            }
        }
    ]
})

db.products.find();