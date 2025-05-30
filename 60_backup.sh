# Aplikasi MongoDB Tools
#  di dalam mongoDb tools terdapat beberapa aplikasi yang bisa kia gunakan untuk melakukan backup
# mongodump adalah aplikasi yang digunakan untuk melakukan backup dalam format binary, cocok untuk database yang berisi data binary atau ukuran yang sangat besar
# mongoexport adalah aplikasi yang digunakan untuk melakukan backup dalam format json/csv, cocok untuk jenkins database yang hanya beriis teks dan berukuran tidak terlalu besar dan hanya bisa per collections

use admin;
db.grantRolesToUser("mongo", [
  { role: "readWrite", db: "belajar" }
])

mongodump --uri="mongodb://mongo:mongo@localhost:27017/belajar?authSource=admin" --out=backup-dump
mongoexport --uri="mongodb://mongo:mongo@localhost:27017/belajar?authSource=admin" --collection=customers --out=customers.json