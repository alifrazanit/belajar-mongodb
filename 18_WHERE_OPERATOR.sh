# Where jarang digunakan
db.customers.find({
    $where: function (){
        return this._id == this.name
    }
})