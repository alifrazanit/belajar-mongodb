# Rata - rata pembuatan user di database admin
# Walaupun user dibuat di database admin, user tetap bisa akses ke database lain dengan role

# FUNCTION
# db.createUser()           | Membuat User
# db.getUsers()             | Mendapatkan semua user
# db.dropUser()             | Menghapus User
# db.updateUser()           | Mengupdate User
# db.changeUserPassword()   | Mengubah user password

# HAK AKSES di mongo dinamakan role

# Database Roles
# Read                       | Membaca data disemua collection
# readWrite                  | Bisa membaca dan mengubah data
# dbAdmin                    | Bisa melakukan kemampuan administrasi database
# userAdmin                  | Mampu membuat user dan role
# dbOwner                    | Kombinasi readWrite, dbAdmin dan userAdmin
# readAnyDatabase            | Sperti read role, tapi untuk semua database
# readWriteAnyDatabase       | Seperti readWrite role, tapi untuk semua database
# userAdminAnyDatabase       | Sperti userAdmin, tapi semua database
# dbAdminAnyDatabase         | seprti dbAdmin, atpi untuk semua database
# backup                     | User untuk Melakukan backup
# restore                    | User untuk Melakukan restore
# root                       | superUser

db.createUser({
    user: "contoh",
    pwd: "contoh",
    roles: [
        { role: "read", db: "test" }
    ]
})

db.createUser({
    user: "contoh2",
    pwd: "contoh2",
    roles: [
        { role: "readWrite", db: "test" }
    ]
})

db.getUsers()

db.changeUserPassword("contoh", "rahasia")

db.dropUser("contoh")

db.updateUser("contoh2", {
    roles: [
        { role: "readWrite", db: "test" },
        { role: "readWrite", db: "belajar" }
    ]
})

mongosh mongodb://contoh:contoh@localhost:27017/test?authSource=admin
mongosh mongodb://alif:alif@localhost:27017/test?authSource=admin
mongosh mongodb://mongo:mongo@localhost:27017/test?authSource=admin

db.dropUser("contoh")
db.dropUser("contoh2")