# Primary Key
# Hanya bisa 1 _id dan nama fieldnya _id

# Struktur Document di MongoDB ada 2
# 1. Embedded Document
# const dataEmbedded = {
#     "id_":"12345",
#     "name":"Alif Razan",
#     "address":{
#         "street":"Jl. ABC",
#         "city":"Bogor"
#     },
#     "contact":{
#         "email":"alifrazanit@gmail.com",
#         "phone":"628111111"
#     }
# }


# NOTE: Ketika melakukan query Anda harus melakukan 3 kali query,
# Pertama Mengquery user, Kedua Mengkueri address, dan ketiga mengkueri contact
# 2. Document Reference
# const user = {
#     "_id":"alif",
#     "name":"Alif Razan Saputra"
# }

# const address = {
#     "_id":"12345",
#     "user_id":"alif",
#     "street":"Jalan"
# }

# const contact = {
#     "_id":"123",
#     "user_id":"alif",
#     "email":"alifrazan@gmail.com"
# }


# Embedded vs Reference
# Gunakan Embedded Jika:
# Antar document saling ketergantungan
# Tidak bisa langsung melakukan perubahan ke embedded document
# Embedded document selalu dibutuhkan ketika mengambil data document

# Gunakan Refernece jika
# Antar document bisa berdiri sendiri dan tidak terlalu tergantung satu sama lain
# Bisa melakukan manipulasi data langsung terhadap reference document
# reference document tidak selalu dibutuhkan saat mengambil document