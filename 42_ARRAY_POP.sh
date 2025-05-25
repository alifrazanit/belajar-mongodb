# POP -1 Menghapus element array paling awal
db.products.updateOne({
    _id: 1
}, {
    $pop: {
        tags: -1
    }
})

# Pop 1 Menghapus element array paling akhir
db.products.updateOne({
    _id: 1
}, {
    $pop: {
        tags: 1
    }
})

db.products.find({_id: 1})