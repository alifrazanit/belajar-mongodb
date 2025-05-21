# 1. CONNECTIONS
# cd C:\AlifFolder\aplikasi\MONGODB\mongosh-2.5.1-win32-x64 
# .\bin\mongosh.exe "mongodb://localhost:27017/NAMA_DB"

# 2. CREATE COLLECTIONS
#  db.createCollection("t_sales");
#  db.createCollection("t_sales_line");
#  db.createCollection("m_users");
#  db.createCollection("m_products");

# 3. show collections
# db.getCollectionNames();

# 4. DATA MODEL EMBEDED
db.m_users.insertOne({
    kodeUser: "USR001",
    name: "Alif Razan Saputra",
    email: "alifrazanit@gmail.com",
    username: "alifrz",
    password: "12345",
    createdDate: new Date(),
    updatedDate: new Date() 
})

db.m_products.insertOne({
    kodeProduct: "PRD001",
    name: "ASUS ROG",
    productCategory: {
        id_category: 1,
        category: "laptop"
    },
    price: 12000000,
    qty: 10
})

# 5. UPDATE DATA
db.m_products.find({
    _id: ObjectId('682d8aa5e4903ff7a66c4bd2'),
});

db.m_products.updateOne({
    _id: ObjectId('682d8aa5e4903ff7a66c4bd2'),
},{
    $set: {
        price: new NumberLong("12000000"),
        qty: new NumberInt("10")
    }
})

# 6. INSERT TABLE t_sales
db.t_sales.insertOne({
    
})