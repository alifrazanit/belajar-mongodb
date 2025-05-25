db.products.find({
    $text: {
        $search: "mie laptop"
    }
}, {
    searchScore:{
        $meta: 'textScore'
    }
})