# $expr  | expression
# $jsonSchema
# $mod  | melakukan operasi modulo
# $regex
# $text | pencarian menggunakan text
# $where | Mengambil document dengan js function



# Contoh $expr (expression)
db.customers.insertOne({
    _id: 'joko',
    name: 'joko'
})

db.customers.find()

# Ada engga sih id dan nama customer itu yang sama?
db.customers.find({
    $expr: {
        $eq: ['$_id', '$name']
    }
})