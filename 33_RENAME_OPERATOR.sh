# ALTER TABLE customers change name full_name
db.customers.updateMany({}, {
    $rename: {
        name: "full_name"
    }
})