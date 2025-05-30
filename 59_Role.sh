# db.createRole()   | Membuat role baru
# db.getRoles()     | Mendapatkan role yang sudah dibuat
# db.deleteRole()   | Menghapus Role
# db.updateRole()   | Mengubah role
use admin;

db.createRole({
    role: "session_management",
    privileges: [
        {
            resource: {
                db: "belajar",
                collection: "sessions"
            },
            actions: [ "insert" ]
        }
    ],
    roles: [
        {
            role: "read",
            db: "belajar"
        }
    ]
})

db.getRoles({ 
    showPrivileges: true
})

db.createUser({
    user: 'alif',
    pwd: 'alif',
    roles: ['session_management']
})

# LOGIN via alif alif, masuk ke db belajar dan lakukan di bawah ini.

db.session.find()

db.customers.find()

db.customers.insertOne({
    _id: 'alif',
    name: 'Alif Razan Saputra'
})
# Hasilnya akan speerit ini,
# not authorized on belajar to execute command { insert: "customers", documents: [ { _id: "alif", name: "Alif Razan Saputra" } ], ordered: true, lsid: { id: UUID("2224b6ef-c4d2-4224-8beb-44f02e402294") }, $db: "belajar" }

db.sessions.insertOne({
    _id: 'test',
    name: 'test'
})

db.session.deleteOne({
    _id: 'test'
})