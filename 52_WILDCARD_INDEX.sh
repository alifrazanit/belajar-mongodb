# WILDCARD Index mendunkung pencarian ke field yang berubah ubah sperti embeded documents
db.customers.createIndex({
    "customFields.$**": 1
})
# customFields ini bisa diganti dengan yang lain, misalkan contact atau address dllsbg.

db.customers.getIndexes();

db.customers.insertMany([
    {
        _id: "budi",
        full_name: "Budi",
        customFields:{
            hobby: "Gaming",
            university: "Universitas Belum Ada"
        }
    },
     {
        _id: "rully",
        full_name: "Rully",
        customFields:{
            ipk: 3.2,
            university: "Universitas Belum Ada"
        }
    },
    {
        _id: "rudi",
        full_name: "Rudi",
        customFields:{
            motherName: "Tini",
            passion: "Ngoding"
        }
    }
])

db.customers.find({
    "customFields.passion" : "Ngoding"
}).explain()

db.customers.find()

db.customers.find({
    "customFields.ipk": 3.2
}).explain()

db.customers.find({
    "customFields.hobby": "Gaming"
}).explain()


🔍 Apa Itu Wildcard Index?
Wildcard index ($**) di MongoDB digunakan untuk mengindeks semua field di dalam sebuah subdokumen secara dinamis, termasuk field yang belum diketahui sebelumnya. Dalam contoh kamu:

js
Salin kode
"customFields.$**": 1
artinya: MongoDB akan membuat indeks untuk semua properti di dalam customFields, baik sekarang maupun yang ditambahkan nanti.

📉 Dampak Terhadap Performa insert dan update
✅ Kelebihan:

Query yang menyaring banyak properti dinamis di customFields bisa menjadi lebih cepat.

Tidak perlu membuat index satu per satu untuk setiap properti dinamis.

❌ Kekurangan (terutama pada insert dan update):

Insert lebih lambat: karena MongoDB harus memproses semua properti dalam customFields dan menambahkannya ke index.

Update lebih lambat: jika field dalam customFields diubah, index juga harus diperbarui.

Semakin besar isi customFields, semakin besar overhead-nya.

📊 Kapan Wildcard Index Cocok?
Wildcard index cocok jika:

Kamu punya struktur field dinamis atau fleksibel.

Query sering memfilter berdasarkan properti dalam customFields.

Jumlah dokumen tidak terlalu besar atau frekuensi update rendah.

Namun, hindari jika:

Kamu sering melakukan banyak operasi insert atau update.

customFields memiliki banyak key/value yang jarang digunakan dalam query.

Kamu mengutamakan write performance.