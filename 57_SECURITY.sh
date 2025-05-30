# Best practice menyimpan data user admin di database admin;

use admin;
db.createUser({
    user: "mongo",
    pwd: "mongo",
    roles: [ { role: "userAdminAnyDatabase", db: "admin" } ]
})

# /etc/mongod.conf
# C:\Program Files\MongoDB\Server\8.0\bin\mongod.cfg
# security:
#   authorization: enabled

# mongod --config "C:\Program Files\MongoDB\Server\8.0\bin\mongod.cfg"
# C. Restart MongoDB Service
# Tekan Win + R, ketik services.msc

# Temukan service MongoDB

# Klik kanan → Restart
# mongosh -u mongo -p mongo --authenticationDatabase admin

# Login mongoDB Client bin/mongosh "mongodb://username:password@host:port/database?authSource=admin"
# authSource > lokasi kita bikin user

mongosh mongodb://mongo:mongo@localhost:27017/belajar?authSource=admin