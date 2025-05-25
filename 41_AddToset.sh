# TAMBAH POPULAR JIKA BELUM ADA, JIKA SUDAH ADA MAKA TIDAK DITAMBAHKAN
db.products.updateOne({
    _id: 1
}, {
    $addToSet: {
        tags: "makanan"
    }
})

db.products.find({ _id: 1})