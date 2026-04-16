%dw 2.0
output application/json
---
// [
//   {
//     "id": 101,
//     "title": "world history",
//     "price": "19.99",
//     "authors": "john doe"
//   },
//   {
//     "id": 202,
//     "title": "the great outdoors",
//     "price": "15.99",
//     "authors": "jane doe"
//   }
// ]

payload.store.books map ((item, index) -> {
    "id": item.bookId,
    "title": item.title,
    "price": item.price,
    "authors": payload.store.authors.author[0]
})
