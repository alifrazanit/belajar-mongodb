db.customers.updateMany({}, {
    $set:{
        wrong: 'ups'
    }
})

db.customers.updateMany({}, {
    $unset: {
        wrong: ''
    }
})