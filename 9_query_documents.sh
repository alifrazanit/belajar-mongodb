# db.<collection>.find(query)

# SELECT * FROM customers where _id = "alif"
db.customers.find({_id:"alif"})

# SELECT * FROM customers where name = "Alif Razan Saputra"
db.customers.find({name:"Alif Razan Saputra"});

# SELECT * FROM products where price = 2000
db.products.find({ price: 2000 })

# SELECT * FROM ORDERS WHERE items.product_id = 1
db.orders.find({ "items.product_id": 1 }) # Nested QUERY