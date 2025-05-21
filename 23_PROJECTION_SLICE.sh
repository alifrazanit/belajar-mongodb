db.products.find({
    tags: {
        $exists: true
    }
}, {
    name: 1,
    tags: {
        $slice: 2
    }
})