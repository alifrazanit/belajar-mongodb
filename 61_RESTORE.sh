mongorestore --uri=mongodb://mongo:mongo@localhost:27017/belajar_restore?authSource=admin" --dir=backup-dump/belajar

mongoimport --uri=mongodb://mongo:mongo@localhost:27017/belajar_import?authSource=admin" --collection=customers --file=customers.json