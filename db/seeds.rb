Image.create!([
  {product_id: 1, url: "https://www.miro.rw/img/slide/3.jpg"},
  {product_id: 2, url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMzFVdQ-ok4VB_cHa8MhO9JHohIL3ReGgNEoAs_I-LpD8n7Rdb"},
  {product_id: 3, url: "https://goo.gl/UgQjuV"},
  {product_id: 2, url: "https://goo.gl/QdeUSn"},
  {product_id: 4, url: "https://goo.gl/71Q8xk"},
  {product_id: 21, url: "https://goo.gl/DlaQEj"}
])
Product.create!([
  {name: "Women Bag", description: "Rwandan made bag that have different design to fit our beauty.", price: "2000.0"},
  {name: "Jersey Frunk", description: "100% rwanda made cloths. it is weightless yet looking awesome with all types of people. never mind of your size we have all size for that can look nicer to you", price: "6000.0"},
  {name: "Agaseke", description: "The beautifully laid crafts display a unique view of Rwandan culture, right from the baskets to bracelets, arm bands, bags paintings, woodcarvings and mats. ", price: "4000.0"},
  {name: "Fruit Basket Large", description: "Rwandan culture is rich enough to serve traditionally the needs of population. This basket is beautiful as well as representing how our culture looks like", price: "4000.0"},
  {name: nil, description: "", price: nil},
  {name: nil, description: "", price: nil},
  {name: nil, description: "", price: nil}
])
Role.create!([
  {user_type: "admin"},
  {user_type: "seller"},
  {user_type: "buyer"}
])
