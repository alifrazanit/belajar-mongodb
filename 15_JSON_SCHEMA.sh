db.products.find({
    $jsonSchema:{
        required: ['name', 'category']
    }
})

db.products.find({
    $jsonSchema:{
        required: ['name']
    }
})

db.products.find({
    $jsonSchema:{
        required: ['name'],
        properties: {
            name: {
                type: 'string'
            },
            price: {
                type: 'string'
            }
        }
    }
})
