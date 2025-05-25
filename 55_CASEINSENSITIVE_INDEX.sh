# https://www.mongodb.com/docs/manual/core/index-case-insensitive/
db.customers.createIndex({
    full_name: 1
},{
    collation: {
        locale: 'en',
        strength: 2
    }
})
| Strength | Artinya                                                           |
| -------- | ----------------------------------------------------------------- |
| 1        | Case dan accent insensitive (abaikan huruf besar/kecil dan aksen) |
| 2        | Case insensitive, tapi sensitive pada aksen                       |
| 3        | Case dan accent sensitive (pembandingan default)                  |

db.customers.find({ full_name: 'Alif Razan Saputra' })

# FITUR LIKE DALAM MONGO
db.customers.find({ full_name: { $regex: '^alif', $options: 'i' } });
Awal: { full_name: { $regex: '^alif', $options: 'i' } }
→ cocok: "Alifudin", "alif123"

Akhir: { full_name: { $regex: 'alif$', $options: 'i' } }
→ cocok: "Budi Alif", "khalif"

Di mana saja: { full_name: { $regex: 'alif', $options: 'i' } }
→ cocok: "My name is Alif", "khalifa", "alif123"

1. Pencarian dengan regex
Kelebihan:

Sangat fleksibel, bisa cari pola kompleks (misal: awalan, akhiran, substring, karakter khusus).

Bisa untuk pencarian yang sulit di-handle index biasa.

Kekurangan:

Kurang optimal kalau regex tidak diawali dengan anchor ^ (misal cari substring di tengah), MongoDB harus scan banyak dokumen (collection scan).

Jika regex dimulai dengan ^ dan pola konstan, MongoDB bisa gunakan index (prefix search), lebih cepat.

Kalau regex tidak cocok index, performa akan turun drastis, terutama untuk koleksi besar.

2. Pencarian dengan index + collation
Kelebihan:

Sangat cepat untuk pencarian yang bisa pakai index, karena MongoDB pakai B-tree index.

Collation mengatur case sensitivity dan accent sensitivity pada index dan query, tanpa perlu regex.

Sangat efisien untuk pencarian exact match atau range scan (misal: awalan).

Kekurangan:

Kurang fleksibel dibanding regex untuk pola kompleks.

Tidak bisa untuk pencarian substring di tengah tanpa regex.

Kesimpulan:
Kondisi Pencarian	Performa Regex	Performa Index + Collation
Exact match atau prefix search	Regex dengan ^ bisa cepat, tapi tetap lebih lambat daripada index	Sangat cepat, pakai index B-tree
Substring search (tengah)	Harus scan collection (slow)	Tidak bisa pakai index, jadi lambat
Pola kompleks	Fleksibel tapi lambat jika besar data	Tidak bisa

Jadi:
Kalau kamu bisa strukturkan pencarian supaya pakai index dengan collation (misal prefix search), itu jauh lebih cepat dan scalable.

Gunakan regex kalau kamu perlu fleksibilitas pola pencarian yang tidak bisa di-handle index.

Kalau kamu mau saya bantu contoh implementasi yang optimal sesuai kebutuhan, tinggal bilang ya!