# Text index mendukung pencarian ke data string baik array atau bukan
# Text index lebih cepat dari $regex
# fitur ini tidak secanggih search engine, kalau mau secanggih searchEnigne itu pakai database ElasticSearch

db.products.createIndex({
    name: "text",
    category: "text",
    tags: "text"
}, {
    weights: {
        name: 10,
        category: 5,
        tags: 1
    }
})

# weights itu bobot pencarian, semakin besar semakin menjadi prioritas

db.products.getIndexes();

# Penggunaan textIndex, dia akan mencari ke 3 field yang ada kata mienya
db.products.find({
    $text: {
        $search: "mie"
    }
})

# MIE ATAU LAPTOP
db.products.find({
    $text: {
        $search: "mie laptop"
    }
})

# MIE DAN LAPTOP
db.products.find({
    $text: {
        $search: '"mie sedap"'
    }
})

#  SEARCH PRODUCTS WITH TEXT "MIE" AND NOT "SEDAP"
db.products.find({
    $text: {
        $search: "laptop -asus"
    }
}).explain()