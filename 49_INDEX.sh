# INDEX ini untuk mempercepat pencarian, 
# tidak perlu pencarian keseluruh data


db.<collection>.createIndex()

db.<collection>.getIndexes()

db.<collection>.dropIndex()


# SINGLE FIELD INDEX
# _id adalah default index

db.products.createIndex({
    category: 1
})

# compound index
db.products.createIndex({
  stock: 1,
  tags: 1
})

db.products.find({
  stock: 10,
  tags: 'popular'
})

db.products.getIndexes();

db.products.dropIndex("category_1")

db.products.find({ category: 'food' })

# DEBUG
# CARI DI QUERYPLAN, JIKA Stage 'IXSCAN' itu menggunakan index
db.products.find({
    category: "food"
}).explain() 


db.products.find()

# QUERY TANPA INDEX
db.products.find({
    tags: "samsung"
}).explain() 

Bagaimana menilai query itu cepat atau tidak?
Perhatikan output dari explain("executionStats"), dan fokus pada bagian ini:

1. executionStats.nReturned
Jumlah dokumen yang dikembalikan.

2. executionStats.totalDocsExamined
Berapa banyak dokumen yang dibaca oleh MongoDB untuk mendapatkan hasil. Semakin kecil semakin baik.

3. executionStats.totalKeysExamined
Berapa banyak entri index yang diperiksa. Ini harus jauh lebih besar dibanding totalDocsExamined jika menggunakan index dengan baik.

4. executionTimeMillis
Berapa lama (dalam milidetik) MongoDB menjalankan query tersebut.

🚀 Tanda Query Kamu Cepat:
Indikator	Nilai Ideal
executionTimeMillis	< 1–5 ms untuk query sederhana
totalDocsExamined	≈ nReturned (artinya pakai index)
stage pada winningPlan	"IXSCAN" atau "FETCH" setelah "IXSCAN"
Tidak ada "COLLSCAN"	Hindari ini, artinya MongoDB scan seluruh dokumen


🛑 Contoh Query Lambat:
json
Salin kode
"winningPlan": {
  "stage": "COLLSCAN"
}
"executionStats": {
  "totalDocsExamined": 100000,
  "nReturned": 5,
  "executionTimeMillis": 200
}
Artinya MongoDB membaca 100.000 dokumen hanya untuk mengembalikan 5 data, dan butuh 200 ms. Lambat.

✅ Contoh Query Cepat:
json
Salin kode
"winningPlan": {
  "stage": "FETCH",
  "inputStage": {
    "stage": "IXSCAN",
    ...
  }
}
"executionStats": {
  "totalDocsExamined": 5,
  "nReturned": 5,
  "executionTimeMillis": 1
}
MongoDB hanya membaca 5 dokumen dan mengembalikan 5 dokumen, artinya index digunakan sempurna. Cepat.

Tips Cepat Cek Apakah Pakai Index atau Tidak
Cek bagian:

json
Salin kode
"stage": "COLLSCAN"  // buruk (collection scan)
"stage": "IXSCAN"    // bagus (index scan)



# INDEX Strategy
# Gunakan tipe single index, jika hanya mencari dengan 1 field saja
# Gunakan compound index jika pencarian itu kombinasi 
# Selalu coba menggunakan explain() untuk check sudah menggunakan index atau belum
#