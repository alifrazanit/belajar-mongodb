db.customers.createIndex({
    email: 1
}, {
    unique: true,
    sparse: true
})
db.customers.getIndexes();
db.customers.find();
db.customers.updateOne({
    _id: 'alif'
}, {
    $set: {
        email:'alifrazanit@gmail.com'
    }
})
db.customers.updateOne({
    _id: 'joko'
}, {
    $set: {
        email:'alifrazanit@gmail.com'
    }
})
# UNIQUE itu berdampak kesemua field yang dinyatakan unique, jika 
# Field tersebut tidak ada maka akan dibaca null, jika lebih dari 1 row maka dibaca duplicate null
# untuk menangani masalah ini maka, kita tambhakn sparse true, jadi tidak akan membuat index kepada 
# dokumen yang tidak memiliki fields jika memiliki fields (email) dalam hal ini maka akan dibuatkan indexnya