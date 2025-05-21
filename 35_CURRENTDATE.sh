db.products.updateMany({}, {
$currentDate: {
        lastModifiedDate: {
            $type: 'date'
        }
    }
})