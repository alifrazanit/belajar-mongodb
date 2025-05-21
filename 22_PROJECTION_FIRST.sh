db.products.find({
    tags:{
        $exists: true
    }    
},{
    name: 1,
    "tags.$": 1
})

# Mengambil produk yang memiliki tags dan mengambil tags pertama saja