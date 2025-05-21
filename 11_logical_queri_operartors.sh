# Logical Operator
# $and      |       and
# $or       |       or
# $nor      |       nor
# $not      |       not
db.products.find({
  $and: [
    {
      category: {
        $in: ["handphone", "laptop"],
      },
    },
    {
      price: {
        $gt: 1000000,
      },
    },
  ],
});

db.products.find({
    category: {
      $not: {
        $in:  ["handphone", "laptop"],
      }
    },
});

