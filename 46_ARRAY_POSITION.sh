# Menginput sesuai position index
db.products.updateMany({} , {
    $push: {
        tags:{
            $each: ['hot'],
            $position: 1
        }
    }
})

#PUSH DATA SEKALIGUS SORTING (-1 DESC, 1 ASC)
db.products.updateMany({} , {
    $push: {
        ratings:{
            $each: [100, 200, 300, 400, 500],
            $sort: -1
        }
    }
})

# DIAMBIL DARI 10 paling belakang
db.products.updateMany({} , {
    $push: {
        ratings:{
            $each: [100, 200, 300, 400, 500],
            $slice: 10,
            $sort: 1
        }
    }
})