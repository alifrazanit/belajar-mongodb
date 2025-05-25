# TTL INDEX
# Waktu hidup
# WAKTU UTC adalah waktu global standard global, jika ada perbedaan dengan waktu di laptop kita, sebenernya kita hanya tinggal -7 dari local laptop kita maka kita akan melihat waktu UTC, jika tidak anda bisa lihat waktu UTC global disini https://time.is/UTC

db.createCollection("session");

db.session.createIndex({
    createdAt: 1
}, {
    expireAfterSeconds: 10
})

db.session.insertOne({
    _id: 1,
    session: "Session 1",
    createdAt: new Date()
})

# JIKA ISI DARI CREATEDATnya lewat 10detik maka documentnya akan hilang.
