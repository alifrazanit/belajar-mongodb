# Function untuk insert data document

# db<collection>.insertOne(document)

# db<collection>.insertMany(array<document>)


# db.customers.insertOne({
#     _id: "alif",
#     name: "Alif Razan Saputra"
# })

# db.customers.find()

# db.products.insertMany([
#     {
#         _id: 1,
#         name: "Indomie",
#         price: new NumberLong("2000")
#     },
#     {
#         _id: 2,
#         name: "Indomie Stoot",
#         price: new NumberLong("2000")
#     },
# ])

# db.products.find()

# db.orders.insertOne({
#     _id: new ObjectId(),
#     total: new NumberLong("8000"),
#     items:[
#         {
#             product_id: 1,
#             price: new NumberLong("2000"),
#             quantity: new NumberInt("2")
#         },
#         {
#             product_id: 2,
#             price: new NumberLong("2000"),
#             quantity: new NumberInt("2")
#         },
#     ]
# })

# db.orders.find()