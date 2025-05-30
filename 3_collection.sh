# Urutan MongoDB
# 
# DATABASE > COLLECTION > DOCUMENTS > FIELDS 

# Collection
# Collection adalah tempat penyimpanan document
# Max per document yang bisa disimpan adalah 16MB
# Max level nested document yang bisa disimpan adalah 100 level


# Commands

# Mengambil semua collections
db.getCollectionNames() 

# Membuat Collection Baru
db.createCollection(name)

# Mendapatkan object Collection
db.getCollection(name)

# sama dengan db.getCollection(<name>)
db.<name>

# Mendapatkan informasi semua collection
db.getCollectionInfos()

db.system.users.find()