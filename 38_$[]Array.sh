# Jika Anda ingin mengubah isi dari semua array maka menggunakan $[]
#  MENGUPDATE SELURUH ARRAY
db.products.updateMany({}, {
    $set: {
        'ratings.$[]': 101
    }
})

db.products.find();