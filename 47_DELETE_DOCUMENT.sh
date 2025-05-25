# DOCUEMNT YANG SUDAH DIHAPUS TIDAK BISA DIKEMBALIKAN HATI HATI

db.customers.insertOne({
    _id: "spammer",
    name: "Spammer"
})

db.customers.find()

db.customers.deleteOne({ _id: "spammer" })

db.customers.insertMany([
    {
        _id: "spammer1",
        full_name: 'Spammer 1'
    },
    {
        _id: "spammer2",
        full_name: 'Spammer 2'
    },
    {
        _id: "spammer3",
        full_name: 'Spammer 3'
    },
])

db.customers.deleteMany({
    _id: {
        $regex: "spammer"
    }
})