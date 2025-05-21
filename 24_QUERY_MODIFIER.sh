# Query medified bisa dipakai untuk pagination
# count()   | Mengambil jumlah data hasil query
# limit(size)   | Membatasi jumlah data yang didapat dari query
# skip(size)    | menghiraukan data pertama hasil query sejumlah yang ditentukan
# sort(query)

# SELECT count(*) FROM products
db.products.find({}).count();

# SELECT * FROM products limit 4
db.products.find({}).limit(4)

# SELECT * FROM products OFFSET 2
db.products.find({}).skip(2)

# SELECT * FROM products LIMIT 4 OFFSET 2
db.products.find({}).limit(4).skip(2)

# SELECT * FROM products ORDER BY CATEGORY ASC, name DESC
db.products.find({}).sort({
    category: 1,
    name: -1
})