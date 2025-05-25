# OPERASI BANYAK PERINTAH DALAM 1 REQUEST 
db.<collection>.insertMany()
db.<collection>.updateMany()
db.<collection>.deleteMany()
db.<collection>.bulkWrite()


db.customers.bulkWrite([
  {
    insertOne: {
      document: {
        _id: "saputra",
        full_name: "Saputra",
      },
    },
  },
  {
    insertOne: {
      document: {
        _id: "razan",
        full_name: "saputra",
      },
    },
  },
  {
    updateMany: {
      filter: {
        _id: {
          $in: ["razan", "saputra"],
        },
      },
      update: {
        $set: {
          full_name: "ALIF Razan SAPUTRA",
        },
      },
    },
  },
]);
