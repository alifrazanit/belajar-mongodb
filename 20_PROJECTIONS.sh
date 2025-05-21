# Projection
# Pada function find, terdapat parameter kedua setelah query, yaitu projection
# projection adalah memilih field mana yang ingin kita ambil atau hide
# db.<collection>.find(query, projection)

# SELECT _id, name, cateogry from products
db.products.find({}, {
    name: 1,
    category: 1
})

db.products.find({}, {
    tags: 0
})